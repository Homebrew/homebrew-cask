cask "font-playwrite-br" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebr/PlaywriteBR%5Bwght%5D.ttf"
  name "Playwrite BR"
  homepage "https://github.com/TypeTogether/Playwrite/"

  font "PlaywriteBR[wght].ttf"

  # No zap stanza required
end
