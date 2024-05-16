cask "font-markazi-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/markazitext/MarkaziText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Markazi Text"
  desc "Contemporary and highly readable typeface"
  homepage "https://fonts.google.com/specimen/Markazi+Text"

  font "MarkaziText[wght].ttf"

  # No zap stanza required
end
