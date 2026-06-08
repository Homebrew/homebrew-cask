cask "font-fustat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fustat/Fustat%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Fustat"
  homepage "https://fonts.google.com/specimen/Fustat"

  font "Fustat[wght].ttf"

  # No zap stanza required
end
