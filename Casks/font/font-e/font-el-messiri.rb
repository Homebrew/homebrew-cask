cask "font-el-messiri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/elmessiri/ElMessiri%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "El Messiri"
  homepage "https://fonts.google.com/specimen/El+Messiri"

  font "ElMessiri[wght].ttf"

  # No zap stanza required
end
