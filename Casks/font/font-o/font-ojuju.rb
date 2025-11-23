cask "font-ojuju" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ojuju/Ojuju%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Ojuju"
  homepage "https://fonts.google.com/specimen/Ojuju"

  font "Ojuju[wght].ttf"

  # No zap stanza required
end
