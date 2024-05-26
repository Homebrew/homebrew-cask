cask "font-playwrite-tz" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritetz/PlaywriteTZ%5Bwght%5D.ttf"
  name "Playwrite TZ"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteTZ[wght].ttf"

  # No zap stanza required
end
