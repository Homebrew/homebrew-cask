cask "font-noto-sans-balinese" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbalinese/NotoSansBalinese%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Balinese"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Balinese"

  font "NotoSansBalinese[wght].ttf"

  # No zap stanza required
end
