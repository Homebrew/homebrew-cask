cask "font-anek-latin" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aneklatin/AnekLatin%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Latin"
  homepage "https://fonts.google.com/specimen/Anek+Latin"

  font "AnekLatin[wdth,wght].ttf"

  # No zap stanza required
end
