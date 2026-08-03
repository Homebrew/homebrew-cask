cask "font-dejavu-sans-mono-nerd-font" do
  version "3.5.0"
  sha256 "ac98553484087191417a8f19325be99e6e6f6bb9abb19de9c9fe0fc5f97cead7"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DejaVuSansMono.tar.xz"
  name "DejaVuSansM Nerd Font (DejaVu Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "DejaVuSansMNerdFont-Bold.ttf"
  font "DejaVuSansMNerdFont-BoldOblique.ttf"
  font "DejaVuSansMNerdFont-Oblique.ttf"
  font "DejaVuSansMNerdFont-Regular.ttf"
  font "DejaVuSansMNerdFontMono-Bold.ttf"
  font "DejaVuSansMNerdFontMono-BoldOblique.ttf"
  font "DejaVuSansMNerdFontMono-Oblique.ttf"
  font "DejaVuSansMNerdFontMono-Regular.ttf"
  font "DejaVuSansMNerdFontPropo-Bold.ttf"
  font "DejaVuSansMNerdFontPropo-BoldOblique.ttf"
  font "DejaVuSansMNerdFontPropo-Oblique.ttf"
  font "DejaVuSansMNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
