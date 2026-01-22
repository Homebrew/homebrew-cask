cask "font-noto-sans-oriya" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoriya/NotoSansOriya%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Oriya"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Oriya"

  font "NotoSansOriya[wdth,wght].ttf"

  # No zap stanza required
end
