cask "font-noto-sans-thaana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansthaana/NotoSansThaana%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Thaana"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Thaana"

  font "NotoSansThaana[wght].ttf"

  # No zap stanza required
end
