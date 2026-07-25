cask "font-dongle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dongle"
  name "Dongle"
  homepage "https://fonts.google.com/specimen/Dongle"

  font "Dongle-Bold.ttf"
  font "Dongle-Light.ttf"
  font "Dongle-Regular.ttf"

  # No zap stanza required
end
