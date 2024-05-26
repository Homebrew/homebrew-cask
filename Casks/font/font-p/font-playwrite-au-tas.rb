cask "font-playwrite-au-tas" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteautas/PlaywriteAUTAS%5Bwght%5D.ttf"
  name "Playwrite AU TAS"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteAUTAS[wght].ttf"

  # No zap stanza required
end
