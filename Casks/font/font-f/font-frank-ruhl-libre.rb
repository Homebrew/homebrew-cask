cask "font-frank-ruhl-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/frankruhllibre/FrankRuhlLibre%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Frank Ruhl Libre"
  homepage "https://fonts.google.com/specimen/Frank+Ruhl+Libre"

  font "FrankRuhlLibre[wght].ttf"

  # No zap stanza required
end
