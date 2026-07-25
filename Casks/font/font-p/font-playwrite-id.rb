cask "font-playwrite-id" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteid/PlaywriteID%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ID"
  homepage "https://fonts.google.com/specimen/Playwrite+ID"

  font "PlaywriteID[wght].ttf"

  # No zap stanza required
end
