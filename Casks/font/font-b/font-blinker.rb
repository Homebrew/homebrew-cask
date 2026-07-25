cask "font-blinker" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/blinker"
  name "Blinker"
  homepage "https://fonts.google.com/specimen/Blinker"

  font "Blinker-Black.ttf"
  font "Blinker-Bold.ttf"
  font "Blinker-ExtraBold.ttf"
  font "Blinker-ExtraLight.ttf"
  font "Blinker-Light.ttf"
  font "Blinker-Regular.ttf"
  font "Blinker-SemiBold.ttf"
  font "Blinker-Thin.ttf"

  # No zap stanza required
end
