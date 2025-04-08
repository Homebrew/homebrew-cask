cask "font-line-seed-jp" do
  version :latest
  sha256 :no_check

  url "https://seed.line.me/src/images/fonts/LINE_Seed_JP.zip"
  name "LINE Seed JP"
  homepage "https://seed.line.me/index_jp.html"

  font "LINESeedJP_20241105/Desktop/OTF/LINESeedJP_OTF_Bd.otf"
  font "LINESeedJP_20241105/Desktop/OTF/LINESeedJP_OTF_Eb.otf"
  font "LINESeedJP_20241105/Desktop/OTF/LINESeedJP_OTF_Rg.otf"
  font "LINESeedJP_20241105/Desktop/OTF/LINESeedJP_OTF_Th.otf"

  # No zap stanza required
end
