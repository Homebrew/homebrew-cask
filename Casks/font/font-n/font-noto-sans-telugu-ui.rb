cask "font-noto-sans-telugu-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansteluguui/NotoSansTeluguUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Telugu UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Telugu+UI"

  font "NotoSansTeluguUI[wdth,wght].ttf"

  # No zap stanza required
end
