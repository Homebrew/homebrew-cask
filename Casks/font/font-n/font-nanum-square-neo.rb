cask "font-nanum-square-neo" do
  version :latest
  sha256 :no_check

  url "https://campaign.naver.com/nanumsquare_neo/download/NaverNanumSquareNeo.zip"
  name "NanumSquare Neo"
  homepage "https://campaign.naver.com/nanumsquare_neo/"

  font "NanumSquareNeo/TTF/NanumSquareNeo-aLt.ttf"
  font "NanumSquareNeo/TTF/NanumSquareNeo-bRg.ttf"
  font "NanumSquareNeo/TTF/NanumSquareNeo-cBd.ttf"
  font "NanumSquareNeo/TTF/NanumSquareNeo-dEb.ttf"
  font "NanumSquareNeo/TTF/NanumSquareNeo-eHv.ttf"
  font "NanumSquareNeo/NanumSquareNeo-Variable.ttf"

  # No zap stanza required
end
