cask "font-sauce-code-pro-nerd-font" do
  version "3.5.0"
  sha256 "876deff02b4f21c4ba02da1dbf2c384e1d6113326ea777e7537d2a54029da3e6"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/SourceCodePro.tar.xz"
  name "SauceCodePro Nerd Font (Source Code Pro)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

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
