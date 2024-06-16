cask "font-playwrite-is" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteis/PlaywriteIS%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IS"
  homepage "https://fonts.google.com/specimen/Playwrite+IS"

  font "PlaywriteIS[wght].ttf"

  # No zap stanza required
end
