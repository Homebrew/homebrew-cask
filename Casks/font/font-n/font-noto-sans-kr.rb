cask "font-noto-sans-kr" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskr/NotoSansKR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans KR"
  homepage "https://fonts.google.com/specimen/Noto+Sans+KR"

  font "NotoSansKR[wght].ttf"

  # No zap stanza required
end
