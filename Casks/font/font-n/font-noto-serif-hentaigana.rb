cask "font-noto-serif-hentaigana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifhentaigana/NotoSerifHentaigana%5Bwght%5D.ttf"
  name "Noto Serif Hentaigana"
  homepage "https://github.com/notofonts/hentaigana.git"

  font "NotoSerifHentaigana[wght].ttf"

  # No zap stanza required
end
