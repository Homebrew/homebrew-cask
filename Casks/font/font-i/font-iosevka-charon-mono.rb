cask "font-iosevka-charon-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/iosevkacharonmono"
  name "Iosevka Charon Mono"
  homepage "https://github.com/jul-sh/iosevka-charon"

  font "IosevkaCharonMono-Bold.ttf"
  font "IosevkaCharonMono-BoldItalic.ttf"
  font "IosevkaCharonMono-Italic.ttf"
  font "IosevkaCharonMono-Light.ttf"
  font "IosevkaCharonMono-LightItalic.ttf"
  font "IosevkaCharonMono-Medium.ttf"
  font "IosevkaCharonMono-MediumItalic.ttf"
  font "IosevkaCharonMono-Regular.ttf"

  # No zap stanza required
end
