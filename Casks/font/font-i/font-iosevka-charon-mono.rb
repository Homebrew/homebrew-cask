cask "font-iosevka-charon-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/iosevkacharonmono"
  name "Iosevka Charon Mono"
  homepage "https://fonts.google.com/specimen/Iosevka+Charon+Mono"

  font "IosevkaCharonMono-Bold.ttf"
  font "IosevkaCharonMono-BoldItalic.ttf"
  font "IosevkaCharonMono-Italic.ttf"
  font "IosevkaCharonMono-Light.ttf"
  font "IosevkaCharonMono-LightItalic.ttf"
  font "IosevkaCharonMono-Medium.ttf"
  font "IosevkaCharonMono-MediumItalic.ttf"
  font "IosevkaCharonMono-Regular.ttf"

  zap :not_required
end
