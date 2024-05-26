cask "font-playwrite-it-trad" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteittrad/PlaywriteITTrad%5Bwght%5D.ttf"
  name "Playwrite IT Trad"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteITTrad[wght].ttf"

  # No zap stanza required
end
