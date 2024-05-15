cask "font-linefont" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/linefont/Linefont%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Linefont"
  desc "Variable font for rendering small to medium-scale line charts"
  homepage "https://fonts.google.com/specimen/Linefont"

  font "Linefont[wdth,wght].ttf"

  # No zap stanza required
end
