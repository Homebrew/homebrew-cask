cask "font-cousine-nerd-font" do
  version "3.2.1"
  sha256 "4ebb4fe2dd2b70f9f6d8035226d15f4af61ec90f0b7f179272b3e9be12a4e3dc"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Cousine.zip"
  name "Cousine Nerd Font (Cousine)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "CousineNerdFont-Bold.ttf"
  font "CousineNerdFont-BoldItalic.ttf"
  font "CousineNerdFont-Italic.ttf"
  font "CousineNerdFont-Regular.ttf"
  font "CousineNerdFontMono-Bold.ttf"
  font "CousineNerdFontMono-BoldItalic.ttf"
  font "CousineNerdFontMono-Italic.ttf"
  font "CousineNerdFontMono-Regular.ttf"
  font "CousineNerdFontPropo-Bold.ttf"
  font "CousineNerdFontPropo-BoldItalic.ttf"
  font "CousineNerdFontPropo-Italic.ttf"
  font "CousineNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
