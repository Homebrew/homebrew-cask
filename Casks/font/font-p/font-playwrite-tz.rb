cask "font-playwrite-tz" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritetz/PlaywriteTZ%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite TZ"
  homepage "https://fonts.google.com/specimen/Playwrite+TZ"

  font "PlaywriteTZ[wght].ttf"

  # No zap stanza required
end
