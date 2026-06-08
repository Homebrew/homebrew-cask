cask "font-akt" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akt/Akt%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Akt"
  homepage "https://fonts.google.com/specimen/Akt"

  font "Akt[wght].ttf"

  # No zap stanza required
end
