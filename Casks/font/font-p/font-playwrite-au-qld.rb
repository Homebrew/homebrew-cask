cask "font-playwrite-au-qld" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteauqld/PlaywriteAUQLD%5Bwght%5D.ttf"
  name "Playwrite AU QLD"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteAUQLD[wght].ttf"

  # No zap stanza required
end
