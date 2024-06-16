cask "font-playwrite-br" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritebr/PlaywriteBR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite BR"
  homepage "https://fonts.google.com/specimen/Playwrite+BR"

  font "PlaywriteBR[wght].ttf"

  # No zap stanza required
end
