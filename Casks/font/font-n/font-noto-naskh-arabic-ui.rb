cask "font-noto-naskh-arabic-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notonaskharabicui/NotoNaskhArabicUI%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Naskh Arabic UI"
  homepage "https://fonts.google.com/specimen/Noto+Naskh+Arabic+UI"

  font "NotoNaskhArabicUI[wght].ttf"

  # No zap stanza required
end
