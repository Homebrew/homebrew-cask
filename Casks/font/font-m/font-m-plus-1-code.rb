cask "font-m-plus-1-code" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mplus1code/MPLUS1Code%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "M PLUS 1 Code"
  homepage "https://fonts.google.com/specimen/M+PLUS+1+Code"

  font "MPLUS1Code[wght].ttf"

  # No zap stanza required
end
