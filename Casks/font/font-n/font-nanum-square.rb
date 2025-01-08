cask "font-nanum-square" do
  version :latest
  sha256 :no_check

  url "https://hangeul.naver.com/hangeul_static/webfont/zips/nanum-square.zip"
  name "NanumSquare"
  homepage "https://campaign.naver.com/nanumsquare_neo/"

  font "NanumSquareB.ttf"
  font "NanumSquareEB.ttf"
  font "NanumSquareL.ttf"
  font "NanumSquareR.ttf"
  font "NanumSquare_acB.ttf"
  font "NanumSquare_acEB.ttf"
  font "NanumSquare_acL.ttf"
  font "NanumSquare_acR.ttf"

  # No zap stanza required
end
