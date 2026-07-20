cask "font-anek-devanagari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekdevanagari/AnekDevanagari%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Devanagari"
  homepage "https://fonts.google.com/specimen/Anek+Devanagari"

  font "AnekDevanagari[wdth,wght].ttf"

  # No zap stanza required
end
