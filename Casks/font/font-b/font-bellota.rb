cask "font-bellota" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bellota"
  name "Bellota"
  homepage "https://fonts.google.com/specimen/Bellota"

  font "Bellota-Bold.ttf"
  font "Bellota-BoldItalic.ttf"
  font "Bellota-Italic.ttf"
  font "Bellota-Light.ttf"
  font "Bellota-LightItalic.ttf"
  font "Bellota-Regular.ttf"

  # No zap stanza required
end
