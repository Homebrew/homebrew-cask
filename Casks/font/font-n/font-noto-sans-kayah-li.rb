cask "font-noto-sans-kayah-li" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskayahli/NotoSansKayahLi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kayah Li"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kayah+Li"

  font "NotoSansKayahLi[wght].ttf"

  # No zap stanza required
end
