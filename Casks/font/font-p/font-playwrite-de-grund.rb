cask "font-playwrite-de-grund" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedegrund/PlaywriteDEGrund%5Bwght%5D.ttf"
  name "Playwrite DE Grund"
  homepage "https://github.com/TypeTogether/Playwrite/"

  font "PlaywriteDEGrund[wght].ttf"

  # No zap stanza required
end
