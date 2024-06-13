cask "font-ubuntu-mono-nerd-font" do
  version "3.2.1"
  sha256 "3631caf3392d1547d4405571c501a8a6f005ba59c02a61f9a715c043444c15b3"

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
