cask "font-sarabun" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sarabun"
  name "Sarabun"
  homepage "https://fonts.google.com/specimen/Sarabun"

  font "Sarabun-Bold.ttf"
  font "Sarabun-BoldItalic.ttf"
  font "Sarabun-ExtraBold.ttf"
  font "Sarabun-ExtraBoldItalic.ttf"
  font "Sarabun-ExtraLight.ttf"
  font "Sarabun-ExtraLightItalic.ttf"
  font "Sarabun-Italic.ttf"
  font "Sarabun-Light.ttf"
  font "Sarabun-LightItalic.ttf"
  font "Sarabun-Medium.ttf"
  font "Sarabun-MediumItalic.ttf"
  font "Sarabun-Regular.ttf"
  font "Sarabun-SemiBold.ttf"
  font "Sarabun-SemiBoldItalic.ttf"
  font "Sarabun-Thin.ttf"
  font "Sarabun-ThinItalic.ttf"

  # No zap stanza required
end
