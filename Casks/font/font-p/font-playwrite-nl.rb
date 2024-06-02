cask "font-playwrite-nl" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenl/PlaywriteNL%5Bwght%5D.ttf"
  name "Playwrite NL"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteNL[wght].ttf"

  # No zap stanza required
end
