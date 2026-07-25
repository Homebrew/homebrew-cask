cask "font-sunflower" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sunflower"
  name "Sunflower"
  homepage "https://fonts.google.com/specimen/Sunflower"

  font "Sunflower-Bold.ttf"
  font "Sunflower-Light.ttf"
  font "Sunflower-Medium.ttf"

  # No zap stanza required
end
