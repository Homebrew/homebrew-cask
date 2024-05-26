cask "font-playwrite-ca" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteca/PlaywriteCA%5Bwght%5D.ttf"
  name "Playwrite CA"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteCA[wght].ttf"

  # No zap stanza required
end
