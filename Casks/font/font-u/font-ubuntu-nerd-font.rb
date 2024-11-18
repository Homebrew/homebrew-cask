cask "font-ubuntu-nerd-font" do
  version "3.3.0"
  sha256 "aa64690dab5b4f5cb6f0223999d44ca30fa51d837d83fcd86eacec527ec4f598"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Ubuntu.zip"
  name "Ubuntu Nerd Font (Ubuntu)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "UbuntuNerdFont-Bold.ttf"
  font "UbuntuNerdFont-BoldItalic.ttf"
  font "UbuntuNerdFont-Condensed.ttf"
  font "UbuntuNerdFont-Italic.ttf"
  font "UbuntuNerdFont-Light.ttf"
  font "UbuntuNerdFont-LightItalic.ttf"
  font "UbuntuNerdFont-Medium.ttf"
  font "UbuntuNerdFont-MediumItalic.ttf"
  font "UbuntuNerdFont-Regular.ttf"
  font "UbuntuNerdFontPropo-Bold.ttf"
  font "UbuntuNerdFontPropo-BoldItalic.ttf"
  font "UbuntuNerdFontPropo-Condensed.ttf"
  font "UbuntuNerdFontPropo-Italic.ttf"
  font "UbuntuNerdFontPropo-Light.ttf"
  font "UbuntuNerdFontPropo-LightItalic.ttf"
  font "UbuntuNerdFontPropo-Medium.ttf"
  font "UbuntuNerdFontPropo-MediumItalic.ttf"
  font "UbuntuNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
