cask "font-aurulent-sans-mono-nerd-font" do
  version "3.5.1"
  sha256 "0cb5bb092b1a8b121762c9e8da70bd2b31a4ebcbc90b85cd34d7f883d7825048"

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
