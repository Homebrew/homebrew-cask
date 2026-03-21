cask "font-geo" do
  version "001.2"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/geo"
  name "Geo"
  homepage "https://fonts.google.com/specimen/Geo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Geo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Geo-Oblique.ttf"
  font "Geo-Regular.ttf"

  # No zap stanza required
end
