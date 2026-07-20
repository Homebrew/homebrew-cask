cask "font-playwrite-in" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritein/PlaywriteIN%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IN"
  homepage "https://fonts.google.com/specimen/Playwrite+IN"

  font "PlaywriteIN[wght].ttf"

  # No zap stanza required
end
