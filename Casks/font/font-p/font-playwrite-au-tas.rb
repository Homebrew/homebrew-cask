cask "font-playwrite-au-tas" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteautas/PlaywriteAUTAS%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU TAS"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+TAS"

  font "PlaywriteAUTAS[wght].ttf"

  # No zap stanza required
end
