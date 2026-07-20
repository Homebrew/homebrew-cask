cask "font-overpass-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/overpassmono/OverpassMono%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Overpass Mono"
  homepage "https://fonts.google.com/specimen/Overpass+Mono"

  font "OverpassMono[wght].ttf"

  # No zap stanza required
end
