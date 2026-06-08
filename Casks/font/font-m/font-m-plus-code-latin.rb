cask "font-m-plus-code-latin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mpluscodelatin/MPLUSCodeLatin%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "M PLUS Code Latin"
  homepage "https://fonts.google.com/specimen/M+PLUS+Code+Latin"

  font "MPLUSCodeLatin[wdth,wght].ttf"

  # No zap stanza required
end
