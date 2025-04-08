cask "font-line-seed-sans-kr" do
  version :latest
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_Sans_KR.zip"
  name "LINE Seed Sans KR"
  homepage "https://seed.line.me/index_kr.html"

  font "LINE_SeedKR_2023.09.06/OTF/LINESeedKR-Bd.otf"
  font "LINE_SeedKR_2023.09.06/OTF/LINESeedKR-Rg.otf"
  font "LINE_SeedKR_2023.09.06/OTF/LINESeedKR-Th.otf"

  # No zap stanza required
end
