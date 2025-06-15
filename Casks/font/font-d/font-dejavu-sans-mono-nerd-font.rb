cask "font-dejavu-sans-mono-nerd-font" do
  version "3.4.0"
  sha256 "4617eb5ada331318ea0571782b8e7c2422b151772a0ab7dc81a4c9711ef8f7a8"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DejaVuSansMono.zip"
  name "DejaVuSansM Nerd Font (DejaVu Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  no_autobump! because: :bumped_by_upstream

  livecheck do
    url :url
    strategy :github_latest
  end

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
