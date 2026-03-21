cask "font-barlow-semi-condensed" do
  version "1.408"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/barlowsemicondensed"
  name "Barlow Semi Condensed"
  homepage "https://fonts.google.com/specimen/Barlow+Semi+Condensed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Barlow Semi Condensed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BarlowSemiCondensed-Black.ttf"
  font "BarlowSemiCondensed-BlackItalic.ttf"
  font "BarlowSemiCondensed-Bold.ttf"
  font "BarlowSemiCondensed-BoldItalic.ttf"
  font "BarlowSemiCondensed-ExtraBold.ttf"
  font "BarlowSemiCondensed-ExtraBoldItalic.ttf"
  font "BarlowSemiCondensed-ExtraLight.ttf"
  font "BarlowSemiCondensed-ExtraLightItalic.ttf"
  font "BarlowSemiCondensed-Italic.ttf"
  font "BarlowSemiCondensed-Light.ttf"
  font "BarlowSemiCondensed-LightItalic.ttf"
  font "BarlowSemiCondensed-Medium.ttf"
  font "BarlowSemiCondensed-MediumItalic.ttf"
  font "BarlowSemiCondensed-Regular.ttf"
  font "BarlowSemiCondensed-SemiBold.ttf"
  font "BarlowSemiCondensed-SemiBoldItalic.ttf"
  font "BarlowSemiCondensed-Thin.ttf"
  font "BarlowSemiCondensed-ThinItalic.ttf"

  # No zap stanza required
end
