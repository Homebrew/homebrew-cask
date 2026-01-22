cask "font-noto-kufi-arabic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notokufiarabic/NotoKufiArabic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Kufi Arabic"
  homepage "https://fonts.google.com/specimen/Noto+Kufi+Arabic"

  font "NotoKufiArabic[wght].ttf"

  # No zap stanza required
end
