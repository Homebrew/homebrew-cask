cask "font-nanum-square-round" do
  version :latest
  sha256 :no_check

  url "https://hangeul.naver.com/hangeul_static/webfont/zips/nanum-square-round.zip"
  name "NanumSquare Round"
  homepage "https://campaign.naver.com/nanumsquare_neo/"

  font "NanumSquareRoundB.ttf"
  font "NanumSquareRoundEB.ttf"
  font "NanumSquareRoundL.ttf"
  font "NanumSquareRoundR.ttf"

  # No zap stanza required
end
