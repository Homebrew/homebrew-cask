cask "font-noto-sans-canadian-aboriginal" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscanadianaboriginal/NotoSansCanadianAboriginal%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Canadian Aboriginal"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Canadian+Aboriginal"

  font "NotoSansCanadianAboriginal[wght].ttf"

  # No zap stanza required
end
