cask "font-hasklug-nerd-font" do
  version "3.3.0"
  sha256 "ad81a279d278ed7dc93c97e0e327721c9e742137dcec6a5a1fd2ade6f3fcdefc"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Hasklig.zip"
  name "Hasklug Nerd Font (Hasklig)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "HasklugNerdFont-Black.otf"
  font "HasklugNerdFont-BlackItalic.otf"
  font "HasklugNerdFont-Bold.otf"
  font "HasklugNerdFont-BoldItalic.otf"
  font "HasklugNerdFont-ExtraLight.otf"
  font "HasklugNerdFont-ExtraLightItalic.otf"
  font "HasklugNerdFont-Italic.otf"
  font "HasklugNerdFont-Light.otf"
  font "HasklugNerdFont-LightItalic.otf"
  font "HasklugNerdFont-Medium.otf"
  font "HasklugNerdFont-MediumItalic.otf"
  font "HasklugNerdFont-Regular.otf"
  font "HasklugNerdFont-SemiBold.otf"
  font "HasklugNerdFont-SemiBoldItalic.otf"
  font "HasklugNerdFontMono-Black.otf"
  font "HasklugNerdFontMono-BlackItalic.otf"
  font "HasklugNerdFontMono-Bold.otf"
  font "HasklugNerdFontMono-BoldItalic.otf"
  font "HasklugNerdFontMono-ExtraLight.otf"
  font "HasklugNerdFontMono-ExtraLightItalic.otf"
  font "HasklugNerdFontMono-Italic.otf"
  font "HasklugNerdFontMono-Light.otf"
  font "HasklugNerdFontMono-LightItalic.otf"
  font "HasklugNerdFontMono-Medium.otf"
  font "HasklugNerdFontMono-MediumItalic.otf"
  font "HasklugNerdFontMono-Regular.otf"
  font "HasklugNerdFontMono-SemiBold.otf"
  font "HasklugNerdFontMono-SemiBoldItalic.otf"
  font "HasklugNerdFontPropo-Black.otf"
  font "HasklugNerdFontPropo-BlackItalic.otf"
  font "HasklugNerdFontPropo-Bold.otf"
  font "HasklugNerdFontPropo-BoldItalic.otf"
  font "HasklugNerdFontPropo-ExtraLight.otf"
  font "HasklugNerdFontPropo-ExtraLightItalic.otf"
  font "HasklugNerdFontPropo-Italic.otf"
  font "HasklugNerdFontPropo-Light.otf"
  font "HasklugNerdFontPropo-LightItalic.otf"
  font "HasklugNerdFontPropo-Medium.otf"
  font "HasklugNerdFontPropo-MediumItalic.otf"
  font "HasklugNerdFontPropo-Regular.otf"
  font "HasklugNerdFontPropo-SemiBold.otf"
  font "HasklugNerdFontPropo-SemiBoldItalic.otf"

  # No zap stanza required
end
