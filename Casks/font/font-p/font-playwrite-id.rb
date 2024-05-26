cask "font-playwrite-id" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteid/PlaywriteID%5Bwght%5D.ttf"
  name "Playwrite ID"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteID[wght].ttf"

  # No zap stanza required
end
