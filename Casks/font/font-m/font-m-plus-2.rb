cask "font-m-plus-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mplus2/MPLUS2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "M PLUS 2"
  homepage "https://fonts.google.com/specimen/M+PLUS+2"

  font "MPLUS2[wght].ttf"

  # No zap stanza required
end
