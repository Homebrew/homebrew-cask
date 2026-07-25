cask "font-noto-sans-tangsa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstangsa/NotoSansTangsa%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tangsa"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tangsa"

  font "NotoSansTangsa[wght].ttf"

  # No zap stanza required
end
