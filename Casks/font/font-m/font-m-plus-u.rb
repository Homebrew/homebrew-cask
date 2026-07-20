cask "font-m-plus-u" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mplusu/MPLUSU%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "M PLUS U"
  homepage "https://fonts.google.com/specimen/M+PLUS+U"

  font "MPLUSU[wght].ttf"

  # No zap stanza required
end
