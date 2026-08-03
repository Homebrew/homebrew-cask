cask "font-aurulent-sans-mono-nerd-font" do
  version "3.5.0"
  sha256 "b2e8e343eba89f9a919abc4d4ea412d3aca0b4a0b333a1ec9ee223684c7d62d3"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/AurulentSansMono.tar.xz"
  name "AurulentSansM Nerd Font (Aurulent Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "AurulentSansMNerdFont-Regular.otf"
  font "AurulentSansMNerdFontMono-Regular.otf"
  font "AurulentSansMNerdFontPropo-Regular.otf"

  # No zap stanza required
end
