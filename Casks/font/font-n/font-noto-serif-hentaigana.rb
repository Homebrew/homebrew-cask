cask "font-noto-serif-hentaigana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifhentaigana/NotoSerifHentaigana%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Hentaigana"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Hentaigana"

  font "NotoSerifHentaigana[wght].ttf"

  # No zap stanza required
end
