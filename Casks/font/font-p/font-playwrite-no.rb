cask "font-playwrite-no" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteno/PlaywriteNO%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NO"
  homepage "https://fonts.google.com/specimen/Playwrite+NO"

  font "PlaywriteNO[wght].ttf"

  # No zap stanza required
end
