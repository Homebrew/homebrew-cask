cask "font-martel" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/martel"
  name "Martel"
  homepage "https://fonts.google.com/specimen/Martel"

  font "Martel-Bold.ttf"
  font "Martel-DemiBold.ttf"
  font "Martel-ExtraBold.ttf"
  font "Martel-Heavy.ttf"
  font "Martel-Light.ttf"
  font "Martel-Regular.ttf"
  font "Martel-UltraLight.ttf"

  # No zap stanza required
end
