cask "font-noto-sans-devanagari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansdevanagari/NotoSansDevanagari%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Devanagari"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Devanagari"

  font "NotoSansDevanagari[wdth,wght].ttf"

  # No zap stanza required
end
