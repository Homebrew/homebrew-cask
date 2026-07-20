cask "font-lisu-bosa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lisubosa"
  name "Lisu Bosa"
  homepage "https://fonts.google.com/specimen/Lisu+Bosa"

  font "LisuBosa-Black.ttf"
  font "LisuBosa-BlackItalic.ttf"
  font "LisuBosa-Bold.ttf"
  font "LisuBosa-BoldItalic.ttf"
  font "LisuBosa-ExtraBold.ttf"
  font "LisuBosa-ExtraBoldItalic.ttf"
  font "LisuBosa-ExtraLight.ttf"
  font "LisuBosa-ExtraLightItalic.ttf"
  font "LisuBosa-Italic.ttf"
  font "LisuBosa-Light.ttf"
  font "LisuBosa-LightItalic.ttf"
  font "LisuBosa-Medium.ttf"
  font "LisuBosa-MediumItalic.ttf"
  font "LisuBosa-Regular.ttf"
  font "LisuBosa-SemiBold.ttf"
  font "LisuBosa-SemiBoldItalic.ttf"

  # No zap stanza required
end
