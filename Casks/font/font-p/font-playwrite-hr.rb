cask "font-playwrite-hr" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehr/PlaywriteHR%5Bwght%5D.ttf"
  name "Playwrite HR"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteHR[wght].ttf"

  # No zap stanza required
end
