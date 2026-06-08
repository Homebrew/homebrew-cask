cask "font-playwrite-vn" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritevn/PlaywriteVN%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite VN"
  homepage "https://fonts.google.com/specimen/Playwrite+VN"

  font "PlaywriteVN[wght].ttf"

  # No zap stanza required
end
