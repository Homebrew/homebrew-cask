cask "font-ubuntu-mono-nerd-font" do
  version "3.3.0"
  sha256 "5791ff219b14000821ff6e3dffcfaa9d29ca9b446c1fc53414d0684eadc8690f"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/UbuntuMono.zip"
  name "UbuntuMono Nerd Font (Ubuntu Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "UbuntuMonoNerdFont-Bold.ttf"
  font "UbuntuMonoNerdFont-BoldItalic.ttf"
  font "UbuntuMonoNerdFont-Italic.ttf"
  font "UbuntuMonoNerdFont-Regular.ttf"
  font "UbuntuMonoNerdFontMono-Bold.ttf"
  font "UbuntuMonoNerdFontMono-BoldItalic.ttf"
  font "UbuntuMonoNerdFontMono-Italic.ttf"
  font "UbuntuMonoNerdFontMono-Regular.ttf"
  font "UbuntuMonoNerdFontPropo-Bold.ttf"
  font "UbuntuMonoNerdFontPropo-BoldItalic.ttf"
  font "UbuntuMonoNerdFontPropo-Italic.ttf"
  font "UbuntuMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
