#!/bin/bash
#!/bin/bash

set -e

# silence bundler complaining about being root
mkdir ~/.bundle
echo 'BUNDLE_SILENCE_ROOT_WARNING: "1"' > ~/.bundle/config

# configure git
git config --global user.name "BrewTestBot"
git config --global user.email "homebrew-test-bot@lists.sfconservancy.org"

# create stubs so build dependencies aren't incorrectly flagged as missing
for i in python svn unzip xz
do
  touch /usr/bin/$i
  chmod +x /usr/bin/$i
done

# setup Homebrew/homebrew-cask instead of Linuxbrew's
CASK_DIR="$(brew --repo homebrew/cask)"
mkdir -p "$CASK_DIR"
rm -rf "$CASK_DIR"
ln -s "$PWD" "$CASK_DIR"

# setup Homebrew environment
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_FORCE_HOMEBREW_ON_LINUX=1
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
unset HOMEBREW_NO_ANALYTICS

# run rake (without a rake binary)
ruby -e "load Gem.bin_path('rake', 'rake')" cask

# commit and push generated files
git commit -m '_data/cask: update from Homebrew/cask push' _data/cask
git push
