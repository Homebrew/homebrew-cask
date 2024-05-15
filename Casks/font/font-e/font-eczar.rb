cask "font-eczar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/eczar/Eczar%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Eczar"
  homepage "https://fonts.google.com/specimen/Eczar"

  font "Eczar[wght].ttf"

  # No zap stanza required
end
