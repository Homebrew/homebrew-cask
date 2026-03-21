cask "font-geostar-fill" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/geostarfill/GeostarFill-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Geostar Fill"
  homepage "https://fonts.google.com/specimen/Geostar+Fill"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Geostar Fill",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GeostarFill-Regular.ttf"

  # No zap stanza required
end
