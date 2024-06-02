cask "font-playwrite-pl" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritepl/PlaywritePL%5Bwght%5D.ttf"
  name "Playwrite PL"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywritePL[wght].ttf"

  # No zap stanza required
end
