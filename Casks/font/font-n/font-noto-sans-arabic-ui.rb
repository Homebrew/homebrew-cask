cask "font-noto-sans-arabic-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansarabicui/NotoSansArabicUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Arabic UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Arabic+UI"

  font "NotoSansArabicUI[wdth,wght].ttf"

  # No zap stanza required
end
