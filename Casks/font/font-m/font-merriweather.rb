cask "font-merriweather" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/merriweather"
  name "Merriweather"
  homepage "https://fonts.google.com/specimen/Merriweather"

  font "Merriweather-Black.ttf"
  font "Merriweather-BlackItalic.ttf"
  font "Merriweather-Bold.ttf"
  font "Merriweather-BoldItalic.ttf"
  font "Merriweather-Italic.ttf"
  font "Merriweather-Light.ttf"
  font "Merriweather-LightItalic.ttf"
  font "Merriweather-Regular.ttf"

  # No zap stanza required
end
