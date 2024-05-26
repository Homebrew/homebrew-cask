cask "font-playwrite-nz" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritenz/PlaywriteNZ%5Bwght%5D.ttf"
  name "Playwrite NZ"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteNZ[wght].ttf"

  # No zap stanza required
end
