cask "font-playwrite-au-vic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteauvic/PlaywriteAUVIC%5Bwght%5D.ttf"
  name "Playwrite AU VIC"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteAUVIC[wght].ttf"

  # No zap stanza required
end
