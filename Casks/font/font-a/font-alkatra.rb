cask "font-alkatra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alkatra/Alkatra%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Alkatra"
  homepage "https://fonts.google.com/specimen/Alkatra"

  font "Alkatra[wght].ttf"

  # No zap stanza required
end
