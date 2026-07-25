cask "font-anek-odia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekodia/AnekOdia%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Odia"
  homepage "https://fonts.google.com/specimen/Anek+Odia"

  font "AnekOdia[wdth,wght].ttf"

  # No zap stanza required
end
