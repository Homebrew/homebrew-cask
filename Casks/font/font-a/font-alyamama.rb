cask "font-alyamama" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alyamama/Alyamama%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Alyamama"
  homepage "https://fonts.google.com/specimen/Alyamama"

  font "Alyamama[wght].ttf"

  # No zap stanza required
end
