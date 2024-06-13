cask "font-sauce-code-pro-nerd-font" do
  version "3.2.1"
  sha256 "dcba53be6a360aac5bd1424ac4ab316c5401f7e5a1fa28be4fa626ce07a30c0f"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/SourceCodePro.zip"
  name "SauceCodePro Nerd Font (Source Code Pro)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SauceCodeProNerdFont-Black.ttf"
  font "SauceCodeProNerdFont-BlackItalic.ttf"
  font "SauceCodeProNerdFont-Bold.ttf"
  font "SauceCodeProNerdFont-BoldItalic.ttf"
  font "SauceCodeProNerdFont-ExtraLight.ttf"
  font "SauceCodeProNerdFont-ExtraLightItalic.ttf"
  font "SauceCodeProNerdFont-Italic.ttf"
  font "SauceCodeProNerdFont-Light.ttf"
  font "SauceCodeProNerdFont-LightItalic.ttf"
  font "SauceCodeProNerdFont-Medium.ttf"
  font "SauceCodeProNerdFont-MediumItalic.ttf"
  font "SauceCodeProNerdFont-Regular.ttf"
  font "SauceCodeProNerdFont-SemiBold.ttf"
  font "SauceCodeProNerdFont-SemiBoldItalic.ttf"
  font "SauceCodeProNerdFontMono-Black.ttf"
  font "SauceCodeProNerdFontMono-BlackItalic.ttf"
  font "SauceCodeProNerdFontMono-Bold.ttf"
  font "SauceCodeProNerdFontMono-BoldItalic.ttf"
  font "SauceCodeProNerdFontMono-ExtraLight.ttf"
  font "SauceCodeProNerdFontMono-ExtraLightItalic.ttf"
  font "SauceCodeProNerdFontMono-Italic.ttf"
  font "SauceCodeProNerdFontMono-Light.ttf"
  font "SauceCodeProNerdFontMono-LightItalic.ttf"
  font "SauceCodeProNerdFontMono-Medium.ttf"
  font "SauceCodeProNerdFontMono-MediumItalic.ttf"
  font "SauceCodeProNerdFontMono-Regular.ttf"
  font "SauceCodeProNerdFontMono-SemiBold.ttf"
  font "SauceCodeProNerdFontMono-SemiBoldItalic.ttf"
  font "SauceCodeProNerdFontPropo-Black.ttf"
  font "SauceCodeProNerdFontPropo-BlackItalic.ttf"
  font "SauceCodeProNerdFontPropo-Bold.ttf"
  font "SauceCodeProNerdFontPropo-BoldItalic.ttf"
  font "SauceCodeProNerdFontPropo-ExtraLight.ttf"
  font "SauceCodeProNerdFontPropo-ExtraLightItalic.ttf"
  font "SauceCodeProNerdFontPropo-Italic.ttf"
  font "SauceCodeProNerdFontPropo-Light.ttf"
  font "SauceCodeProNerdFontPropo-LightItalic.ttf"
  font "SauceCodeProNerdFontPropo-Medium.ttf"
  font "SauceCodeProNerdFontPropo-MediumItalic.ttf"
  font "SauceCodeProNerdFontPropo-Regular.ttf"
  font "SauceCodeProNerdFontPropo-SemiBold.ttf"
  font "SauceCodeProNerdFontPropo-SemiBoldItalic.ttf"

  # No zap stanza required
end
