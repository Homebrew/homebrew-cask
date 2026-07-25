cask "font-oxygen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oxygen"
  name "Oxygen"
  homepage "https://fonts.google.com/specimen/Oxygen"

  font "Oxygen-Bold.ttf"
  font "Oxygen-Light.ttf"
  font "Oxygen-Regular.ttf"

  # No zap stanza required
end
