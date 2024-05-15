cask "font-gemunu-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gemunulibre/GemunuLibre%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Gemunu Libre"
  homepage "https://fonts.google.com/specimen/Gemunu+Libre"

  font "GemunuLibre[wght].ttf"

  # No zap stanza required
end
