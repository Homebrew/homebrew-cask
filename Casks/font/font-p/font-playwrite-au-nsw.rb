cask "font-playwrite-au-nsw" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteaunsw/PlaywriteAUNSW%5Bwght%5D.ttf"
  name "Playwrite AU NSW"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteAUNSW[wght].ttf"

  # No zap stanza required
end
