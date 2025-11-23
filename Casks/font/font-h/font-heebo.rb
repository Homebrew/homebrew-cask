cask "font-heebo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/heebo/Heebo%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Heebo"
  homepage "https://fonts.google.com/specimen/Heebo"

  font "Heebo[wght].ttf"

  # No zap stanza required
end
