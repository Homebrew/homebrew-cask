cask "font-jura" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jura/Jura%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Jura"
  homepage "https://fonts.google.com/specimen/Jura"

  font "Jura[wght].ttf"

  # No zap stanza required
end
