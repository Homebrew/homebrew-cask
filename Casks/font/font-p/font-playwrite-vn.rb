cask "font-playwrite-vn" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritevn/PlaywriteVN%5Bwght%5D.ttf"
  name "Playwrite VN"
  homepage "https://github.com/vv-monsalve/Playwrite"

  font "PlaywriteVN[wght].ttf"

  # No zap stanza required
end
