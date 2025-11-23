cask "font-geostar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/geostar/Geostar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Geostar"
  homepage "https://fonts.google.com/specimen/Geostar"

  font "Geostar-Regular.ttf"

  # No zap stanza required
end
