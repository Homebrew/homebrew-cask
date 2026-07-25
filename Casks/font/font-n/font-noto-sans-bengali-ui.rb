cask "font-noto-sans-bengali-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbengaliui/NotoSansBengaliUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Bengali UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Bengali+UI"

  font "NotoSansBengaliUI[wdth,wght].ttf"

  # No zap stanza required
end
