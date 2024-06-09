cask "font-playwrite-cu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecu/PlaywriteCU%5Bwght%5D.ttf"
  name "Playwrite CU"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteCU[wght].ttf"

  # No zap stanza required
end
