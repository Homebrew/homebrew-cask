cask "font-nanum-square" do
  version :latest
  sha256 :no_check

  url "https://campaign.naver.com/nanumsquare_neo/download/NaverNanumSquare.zip"
  name "NanumSquare"
  homepage "https://campaign.naver.com/nanumsquare_neo/"

  font "NaverNanumSquare/NanumFontSetup_TTF_SQUARE/NanumSquareB.ttf"
  font "NaverNanumSquare/NanumFontSetup_TTF_SQUARE/NanumSquareEB.ttf"
  font "NaverNanumSquare/NanumFontSetup_TTF_SQUARE/NanumSquareL.ttf"
  font "NaverNanumSquare/NanumFontSetup_TTF_SQUARE/NanumSquareR.ttf"
  font "NaverNanumSquare/NanumFontSetup_TTF_SQUARE/NanumSquare_acB.ttf"
  font "NaverNanumSquare/NanumFontSetup_TTF_SQUARE/NanumSquare_acEB.ttf"
  font "NaverNanumSquare/NanumFontSetup_TTF_SQUARE/NanumSquare_acL.ttf"
  font "NaverNanumSquare/NanumFontSetup_TTF_SQUARE/NanumSquare_acR.ttf"

  # No zap stanza required
end
