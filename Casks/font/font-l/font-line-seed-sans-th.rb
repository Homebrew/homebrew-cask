cask "font-line-seed-sans-th" do
  version :latest
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_Sans_TH.zip"
  name "LINE Seed Sans TH"
  homepage "https://seed.line.me/index_th.html"

  font "LINE_Seed_Sans_TH_V1.003/Desktop/OTF/LINESeedSansTH_Bd.otf"
  font "LINE_Seed_Sans_TH_V1.003/Desktop/OTF/LINESeedSansTH_He.otf"
  font "LINE_Seed_Sans_TH_V1.003/Desktop/OTF/LINESeedSansTH_Rg.otf"
  font "LINE_Seed_Sans_TH_V1.003/Desktop/OTF/LINESeedSansTH_Th.otf"
  font "LINE_Seed_Sans_TH_V1.003/Desktop/OTF/LINESeedSansTH_XBd.otf"

  # No zap stanza required
end
