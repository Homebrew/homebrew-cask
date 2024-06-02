cask "font-playwrite-sk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritesk/PlaywriteSK%5Bwght%5D.ttf"
  name "Playwrite SK"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteSK[wght].ttf"

  # No zap stanza required
end
