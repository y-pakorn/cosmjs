#!/bin/bash
set -o errexit -o nounset -o pipefail
command -v shellcheck > /dev/null && shellcheck "$0"

SCRIPT_DIR="$(realpath "$(dirname "$0")")"
source "$SCRIPT_DIR"/env

echo "Killing Cosmos container..."
docker container kill "$CONTAINER_NAME"
