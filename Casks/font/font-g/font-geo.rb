cask "font-geo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/geo"
  name "Geo"
  homepage "https://fonts.google.com/specimen/Geo"

  font "Geo-Oblique.ttf"
  font "Geo-Regular.ttf"

  # No zap stanza required
end
