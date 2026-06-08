cask "font-neuton" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/neuton"
  name "Neuton"
  homepage "https://fonts.google.com/specimen/Neuton"

  font "Neuton-Bold.ttf"
  font "Neuton-ExtraBold.ttf"
  font "Neuton-ExtraLight.ttf"
  font "Neuton-Italic.ttf"
  font "Neuton-Light.ttf"
  font "Neuton-Regular.ttf"

  # No zap stanza required
end
