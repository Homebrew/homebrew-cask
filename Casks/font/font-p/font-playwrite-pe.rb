cask "font-playwrite-pe" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritepe/PlaywritePE%5Bwght%5D.ttf"
  name "Playwrite PE"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywritePE[wght].ttf"

  # No zap stanza required
end
