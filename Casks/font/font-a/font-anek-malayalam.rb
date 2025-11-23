cask "font-anek-malayalam" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekmalayalam/AnekMalayalam%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Malayalam"
  homepage "https://fonts.google.com/specimen/Anek+Malayalam"

  font "AnekMalayalam[wdth,wght].ttf"

  # No zap stanza required
end
