cask "font-line-seed-sans" do
  version :latest
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_Sans_EN.zip"
  name "LINE Seed Sans EN"
  homepage "https://seed.line.me/index_en.html"

  font "LINE_Seed_Sans_V1.003/Desktop/OTF/LINESeedSans_Bd.otf"
  font "LINE_Seed_Sans_V1.003/Desktop/OTF/LINESeedSans_He.otf"
  font "LINE_Seed_Sans_V1.003/Desktop/OTF/LINESeedSans_Rg.otf"
  font "LINE_Seed_Sans_V1.003/Desktop/OTF/LINESeedSans_Th.otf"
  font "LINE_Seed_Sans_V1.003/Desktop/OTF/LINESeedSans_Xbd.otf"

  # No zap stanza required
end
