cask "font-kodchasan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kodchasan"
  name "Kodchasan"
  homepage "https://fonts.google.com/specimen/Kodchasan"

  font "Kodchasan-Bold.ttf"
  font "Kodchasan-BoldItalic.ttf"
  font "Kodchasan-ExtraLight.ttf"
  font "Kodchasan-ExtraLightItalic.ttf"
  font "Kodchasan-Italic.ttf"
  font "Kodchasan-Light.ttf"
  font "Kodchasan-LightItalic.ttf"
  font "Kodchasan-Medium.ttf"
  font "Kodchasan-MediumItalic.ttf"
  font "Kodchasan-Regular.ttf"
  font "Kodchasan-SemiBold.ttf"
  font "Kodchasan-SemiBoldItalic.ttf"

  # No zap stanza required
end
