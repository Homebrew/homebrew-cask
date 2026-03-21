cask "font-noto-serif-hentaigana" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifhentaigana/NotoSerifHentaigana%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Hentaigana"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Hentaigana"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Hentaigana",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifHentaigana[wght].ttf"

  # No zap stanza required
end
