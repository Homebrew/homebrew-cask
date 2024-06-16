cask "font-playwrite-ie" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteie/PlaywriteIE%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IE"
  homepage "https://fonts.google.com/specimen/Playwrite+IE"

  font "PlaywriteIE[wght].ttf"

  # No zap stanza required
end
