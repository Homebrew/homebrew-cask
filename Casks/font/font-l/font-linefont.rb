cask "font-linefont" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/linefont/Linefont%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Linefont"
  homepage "https://fonts.google.com/specimen/Linefont"

  font "Linefont[wdth,wght].ttf"

  # No zap stanza required
end
