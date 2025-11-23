cask "font-anaheim" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anaheim/Anaheim%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anaheim"
  homepage "https://fonts.google.com/specimen/Anaheim"

  font "Anaheim[wght].ttf"

  # No zap stanza required
end
