cask "font-playpen-sans-hebrew" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensanshebrew/PlaypenSansHebrew%5Bwght%5D.ttf"
  name "Playpen Sans Hebrew"
  homepage "https://github.com/TypeTogether/Playpen-Sans"

  font "PlaypenSansHebrew[wght].ttf"

  # No zap stanza required
end
