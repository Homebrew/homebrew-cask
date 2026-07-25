cask "font-sixtyfour" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sixtyfour/Sixtyfour%5BBLED%2CSCAN%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sixtyfour"
  homepage "https://fonts.google.com/specimen/Sixtyfour"

  font "Sixtyfour[BLED,SCAN].ttf"

  # No zap stanza required
end
