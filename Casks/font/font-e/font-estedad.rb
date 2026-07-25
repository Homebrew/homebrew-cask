cask "font-estedad" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/estedad/Estedad%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Estedad"
  homepage "https://fonts.google.com/specimen/Estedad"

  font "Estedad[wght].ttf"

  # No zap stanza required
end
