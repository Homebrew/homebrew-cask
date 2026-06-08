cask "font-playwrite-de-grund" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedegrund/PlaywriteDEGrund%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE Grund"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+Grund"

  font "PlaywriteDEGrund[wght].ttf"

  # No zap stanza required
end
