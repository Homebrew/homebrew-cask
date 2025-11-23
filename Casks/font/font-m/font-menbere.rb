cask "font-menbere" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/menbere/Menbere%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Menbere"
  homepage "https://fonts.google.com/specimen/Menbere"

  font "Menbere[wght].ttf"

  # No zap stanza required
end
