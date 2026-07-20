cask "font-trispace" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/trispace/Trispace%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Trispace"
  homepage "https://fonts.google.com/specimen/Trispace"

  font "Trispace[wdth,wght].ttf"

  # No zap stanza required
end
