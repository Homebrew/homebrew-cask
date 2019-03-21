#!/bin/bash

set -e

# silence bundler complaining about being root
mkdir ~/.bundle
echo 'BUNDLE_SILENCE_ROOT_WARNING: "1"' > ~/.bundle/config

# configure git
git config --global user.name "BrewTestBot"
git config --global user.email "homebrew-test-bot@lists.sfconservancy.org"

CASK_DIR="$(brew --repo "$GITHUB_REPOSITORY")"
mkdir -p "$CASK_DIR"
rm -rf "$CASK_DIR"
ln -s "$PWD" "$CASK_DIR"

# setup Homebrew environment
export PATH="$(brew --repo)/Library/Homebrew/vendor/portable-ruby/current/bin:$PATH"

# setup SSH
mkdir ~/.ssh
chmod 700 ~/.ssh
echo "$FORMULAE_DEPLOY_KEY" > ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519
git config --global core.sshCommand "ssh -i ~/.ssh/id_ed25519 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

# clone formulae.brew.sh with SSH so we can push back
git clone git@github.com:Homebrew/formulae.brew.sh
cd formulae.brew.sh

# setup analytics
echo "$ANALYTICS_JSON_KEY" > ~/.homebrew_analytics.json

# run rake (without a rake binary)
ruby -e "load Gem.bin_path('rake', 'rake')" cask

# commit and push generated files
git commit -m 'cask: update from Homebrew/cask push' _data/cask api/cask cask
git push
