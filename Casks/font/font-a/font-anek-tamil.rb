cask "font-anek-tamil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anektamil/AnekTamil%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Tamil"
  homepage "https://fonts.google.com/specimen/Anek+Tamil"

  font "AnekTamil[wdth,wght].ttf"

  # No zap stanza required
end
