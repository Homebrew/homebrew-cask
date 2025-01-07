cask "font-nanum-square-neo" do
  version :latest
  sha256 :no_check

  url "https://hangeul.naver.com/hangeul_static/webfont/zips/nanum-square-neo.zip"
  name "NanumSquare Neo"
  homepage "https://campaign.naver.com/nanumsquare_neo/"

  font "NanumSquareNeo/NanumSquareNeo/TTF/NanumSquareNeo-aLt.ttf"
  font "NanumSquareNeo/NanumSquareNeo/TTF/NanumSquareNeo-bRg.ttf"
  font "NanumSquareNeo/NanumSquareNeo/TTF/NanumSquareNeo-cBd.ttf"
  font "NanumSquareNeo/NanumSquareNeo/TTF/NanumSquareNeo-dEb.ttf"
  font "NanumSquareNeo/NanumSquareNeo/TTF/NanumSquareNeo-eHv.ttf"
  font "NanumSquareNeo/NanumSquareNeo/NanumSquareNeo-Variable.ttf"

  # No zap stanza required
end
