cask "font-frank-ruhl-libre" do
  version "6.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/frankruhllibre/FrankRuhlLibre%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Frank Ruhl Libre"
  homepage "https://fonts.google.com/specimen/Frank+Ruhl+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Frank Ruhl Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FrankRuhlLibre[wght].ttf"

  # No zap stanza required
end
