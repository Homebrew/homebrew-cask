cask "font-lemonada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lemonada/Lemonada%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lemonada"
  homepage "https://fonts.google.com/specimen/Lemonada"

  font "Lemonada[wght].ttf"

  # No zap stanza required
end
