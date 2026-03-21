cask "font-overpass-mono" do
  version "4.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/overpassmono/OverpassMono%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Overpass Mono"
  homepage "https://fonts.google.com/specimen/Overpass+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Overpass Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OverpassMono[wght].ttf"

  # No zap stanza required
end
