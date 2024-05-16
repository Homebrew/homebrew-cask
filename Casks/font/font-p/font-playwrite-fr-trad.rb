cask "font-playwrite-fr-trad" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrtrad/PlaywriteFRTrad%5Bwght%5D.ttf"
  name "Playwrite FR Trad"
  homepage "https://github.com/TypeTogether/Playwrite/"

  font "PlaywriteFRTrad[wght].ttf"

  # No zap stanza required
end
