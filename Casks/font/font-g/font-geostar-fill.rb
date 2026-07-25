cask "font-geostar-fill" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/geostarfill/GeostarFill-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Geostar Fill"
  homepage "https://fonts.google.com/specimen/Geostar+Fill"

  font "GeostarFill-Regular.ttf"

  # No zap stanza required
end
