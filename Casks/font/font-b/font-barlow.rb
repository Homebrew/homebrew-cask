cask "font-barlow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/barlow"
  name "Barlow"
  desc "Led by jeremy tribby, a designer based in san francisco, usa"
  homepage "https://fonts.google.com/specimen/Barlow"

  font "Barlow-Black.ttf"
  font "Barlow-BlackItalic.ttf"
  font "Barlow-Bold.ttf"
  font "Barlow-BoldItalic.ttf"
  font "Barlow-ExtraBold.ttf"
  font "Barlow-ExtraBoldItalic.ttf"
  font "Barlow-ExtraLight.ttf"
  font "Barlow-ExtraLightItalic.ttf"
  font "Barlow-Italic.ttf"
  font "Barlow-Light.ttf"
  font "Barlow-LightItalic.ttf"
  font "Barlow-Medium.ttf"
  font "Barlow-MediumItalic.ttf"
  font "Barlow-Regular.ttf"
  font "Barlow-SemiBold.ttf"
  font "Barlow-SemiBoldItalic.ttf"
  font "Barlow-Thin.ttf"
  font "Barlow-ThinItalic.ttf"

  # No zap stanza required
end
