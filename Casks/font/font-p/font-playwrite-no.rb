cask "font-playwrite-no" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteno/PlaywriteNO%5Bwght%5D.ttf"
  name "Playwrite NO"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteNO[wght].ttf"

  # No zap stanza required
end
