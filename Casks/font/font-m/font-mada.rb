cask "font-mada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mada/Mada%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Mada"
  homepage "https://fonts.google.com/specimen/Mada"

  font "Mada[wght].ttf"

  # No zap stanza required
end
