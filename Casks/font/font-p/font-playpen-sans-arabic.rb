cask "font-playpen-sans-arabic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensansarabic/PlaypenSansArabic%5Bwght%5D.ttf"
  name "Playpen Sans Arabic"
  homepage "https://github.com/TypeTogether/Playpen-Sans"

  font "PlaypenSansArabic[wght].ttf"

  # No zap stanza required
end
