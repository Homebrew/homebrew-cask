cask "font-noto-serif-sinhala" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifsinhala/NotoSerifSinhala%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Sinhala"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Sinhala"

  font "NotoSerifSinhala[wdth,wght].ttf"

  # No zap stanza required
end
