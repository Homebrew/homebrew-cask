cask "font-intone-mono-nerd-font" do
  version "3.2.1"
  sha256 "3a8170ffcf75b3b421d4d094701934ea514bc5b56763c5095240053cf278ca6c"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/IntelOneMono.zip"
  name "IntoneMono Nerd Font (Intel One Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IntoneMonoNerdFont-Bold.ttf"
  font "IntoneMonoNerdFont-BoldItalic.ttf"
  font "IntoneMonoNerdFont-Italic.ttf"
  font "IntoneMonoNerdFont-Light.ttf"
  font "IntoneMonoNerdFont-LightItalic.ttf"
  font "IntoneMonoNerdFont-Medium.ttf"
  font "IntoneMonoNerdFont-MediumItalic.ttf"
  font "IntoneMonoNerdFont-Regular.ttf"
  font "IntoneMonoNerdFontMono-Bold.ttf"
  font "IntoneMonoNerdFontMono-BoldItalic.ttf"
  font "IntoneMonoNerdFontMono-Italic.ttf"
  font "IntoneMonoNerdFontMono-Light.ttf"
  font "IntoneMonoNerdFontMono-LightItalic.ttf"
  font "IntoneMonoNerdFontMono-Medium.ttf"
  font "IntoneMonoNerdFontMono-MediumItalic.ttf"
  font "IntoneMonoNerdFontMono-Regular.ttf"
  font "IntoneMonoNerdFontPropo-Bold.ttf"
  font "IntoneMonoNerdFontPropo-BoldItalic.ttf"
  font "IntoneMonoNerdFontPropo-Italic.ttf"
  font "IntoneMonoNerdFontPropo-Light.ttf"
  font "IntoneMonoNerdFontPropo-LightItalic.ttf"
  font "IntoneMonoNerdFontPropo-Medium.ttf"
  font "IntoneMonoNerdFontPropo-MediumItalic.ttf"
  font "IntoneMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
