cask "font-red-rose" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/redrose/RedRose%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Red Rose"
  homepage "https://fonts.google.com/specimen/Red+Rose"

  font "RedRose[wght].ttf"

  # No zap stanza required
end
