cask "font-briem-hand" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/briemhand/BriemHand%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Briem Hand"
  homepage "https://fonts.google.com/specimen/Briem+Hand"

  font "BriemHand[wght].ttf"

  # No zap stanza required
end
