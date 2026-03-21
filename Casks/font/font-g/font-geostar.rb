cask "font-geostar" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/geostar/Geostar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Geostar"
  homepage "https://fonts.google.com/specimen/Geostar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Geostar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Geostar-Regular.ttf"

  # No zap stanza required
end
