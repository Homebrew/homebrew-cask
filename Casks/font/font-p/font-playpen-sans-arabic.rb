cask "font-playpen-sans-arabic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensansarabic/PlaypenSansArabic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playpen Sans Arabic"
  homepage "https://fonts.google.com/specimen/Playpen+Sans+Arabic"

  font "PlaypenSansArabic[wght].ttf"

  # No zap stanza required
end
