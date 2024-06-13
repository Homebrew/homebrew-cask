cask "font-kapakana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kapakana/Kapakana%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kapakana"
  homepage "https://fonts.google.com/specimen/Kapakana"

  font "Kapakana[wght].ttf"

  # No zap stanza required
end
