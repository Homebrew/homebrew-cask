cask "font-awesome-terminal-fonts" do
  version :latest
  sha256 :no_check

  url "https://github.com/gabrielelana/awesome-terminal-fonts/archive/refs/heads/patching-strategy.tar.gz"
  name "Awesome Terminal Fonts"
  homepage "https://github.com/gabrielelana/awesome-terminal-fonts"

  font "awesome-terminal-fonts-patching-strategy/patched/Droid+Sans+Mono+Awesome.ttf"
  font "awesome-terminal-fonts-patching-strategy/patched/Inconsolata+Awesome.ttf"
  font "awesome-terminal-fonts-patching-strategy/patched/SourceCodePro+Powerline+Awesome+Regular.ttf"

  # No zap stanza required
end
