cask "font-playwrite-au-sa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteausa/PlaywriteAUSA%5Bwght%5D.ttf"
  name "Playwrite AU SA"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+SA"

  font "PlaywriteAUSA[wght].ttf"

  # No zap stanza required
end
