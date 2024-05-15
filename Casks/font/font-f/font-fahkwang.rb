cask "font-fahkwang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fahkwang"
  name "Fahkwang"
  homepage "https://fonts.google.com/specimen/Fahkwang"

  font "Fahkwang-Bold.ttf"
  font "Fahkwang-BoldItalic.ttf"
  font "Fahkwang-ExtraLight.ttf"
  font "Fahkwang-ExtraLightItalic.ttf"
  font "Fahkwang-Italic.ttf"
  font "Fahkwang-Light.ttf"
  font "Fahkwang-LightItalic.ttf"
  font "Fahkwang-Medium.ttf"
  font "Fahkwang-MediumItalic.ttf"
  font "Fahkwang-Regular.ttf"
  font "Fahkwang-SemiBold.ttf"
  font "Fahkwang-SemiBoldItalic.ttf"

  # No zap stanza required
end
