cask "font-playwrite-fr-trad" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritefrtrad/PlaywriteFRTrad%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite FR Trad"
  homepage "https://fonts.google.com/specimen/Playwrite+FR+Trad"

  font "PlaywriteFRTrad[wght].ttf"

  # No zap stanza required
end
