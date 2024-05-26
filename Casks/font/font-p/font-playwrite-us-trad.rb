cask "font-playwrite-us-trad" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteustrad/PlaywriteUSTrad%5Bwght%5D.ttf"
  name "Playwrite US Trad"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteUSTrad[wght].ttf"

  # No zap stanza required
end
