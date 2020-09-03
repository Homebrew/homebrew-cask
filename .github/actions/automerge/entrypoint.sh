#!/usr/bin/env bash

set -euo pipefail

# Override `/github/home` set by GitHub Actions.
export HOME=/home/linuxbrew

export HOMEBREW_GITHUB_API_TOKEN="${INPUT_TOKEN}"
brew ruby -- /automerge.rb "${GITHUB_EVENT_NAME}" "${GITHUB_EVENT_PATH}" "${GITHUB_REPOSITORY}"
