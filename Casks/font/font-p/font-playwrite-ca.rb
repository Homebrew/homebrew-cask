cask "font-playwrite-ca" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteca/PlaywriteCA%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CA"
  homepage "https://fonts.google.com/specimen/Playwrite+CA"

  font "PlaywriteCA[wght].ttf"

  # No zap stanza required
end
