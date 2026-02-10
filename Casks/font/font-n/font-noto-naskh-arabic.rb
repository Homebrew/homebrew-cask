cask "font-noto-naskh-arabic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notonaskharabic/NotoNaskhArabic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Naskh Arabic"
  homepage "https://fonts.google.com/specimen/Noto+Naskh+Arabic"

  font "NotoNaskhArabic[wght].ttf"

  # No zap stanza required
end
