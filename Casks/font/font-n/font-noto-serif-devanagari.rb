cask "font-noto-serif-devanagari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifdevanagari/NotoSerifDevanagari%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Devanagari"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Devanagari"

  font "NotoSerifDevanagari[wdth,wght].ttf"

  # No zap stanza required
end
