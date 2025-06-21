cask "font-nanum-square-round" do
  version :latest
  sha256 :no_check

  url "https://campaign.naver.com/nanumsquare_neo/download/NaverNanumSquareRound.zip"
  name "NanumSquare Round"
  homepage "https://campaign.naver.com/nanumsquare_neo/"

  font "NaverNanumSquareRound/NanumFontSetup_TTF_SQUARE_ROUND/NanumSquareRoundB.ttf"
  font "NaverNanumSquareRound/NanumFontSetup_TTF_SQUARE_ROUND/NanumSquareRoundEB.ttf"
  font "NaverNanumSquareRound/NanumFontSetup_TTF_SQUARE_ROUND/NanumSquareRoundL.ttf"
  font "NaverNanumSquareRound/NanumFontSetup_TTF_SQUARE_ROUND/NanumSquareRoundR.ttf"

  # No zap stanza required
end
