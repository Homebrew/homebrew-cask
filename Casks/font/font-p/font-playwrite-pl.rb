cask "font-playwrite-pl" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritepl/PlaywritePL%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PL"
  homepage "https://fonts.google.com/specimen/Playwrite+PL"

  font "PlaywritePL[wght].ttf"

  # No zap stanza required
end
