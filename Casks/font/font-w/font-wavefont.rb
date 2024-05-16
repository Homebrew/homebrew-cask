cask "font-wavefont" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wavefont/Wavefont%5BROND%2CYELA%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Wavefont"
  desc "Useful to adjust distance between bars, 1ch === 1 bar width"
  homepage "https://fonts.google.com/specimen/Wavefont"

  font "Wavefont[ROND,YELA,wght].ttf"

  # No zap stanza required
end
