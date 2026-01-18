cask "font-noto-serif-hebrew" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifhebrew/NotoSerifHebrew%5Bwdth,wght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Hebrew"
  homepage "https://fonts.google.com/noto/specimen/Noto+Serif+Hebrew"

  font "NotoSerifHebrew[wdth,wght].ttf"

  # No zap stanza required
end
