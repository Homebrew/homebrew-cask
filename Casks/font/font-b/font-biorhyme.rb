cask "font-biorhyme" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/biorhyme/BioRhyme%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "BioRhyme"
  homepage "https://fonts.google.com/specimen/BioRhyme"

  font "BioRhyme[wdth,wght].ttf"

  # No zap stanza required
end
