cask "font-playwrite-ng-modern" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritengmodern/PlaywriteNGModern%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite NG Modern"
  homepage "https://fonts.google.com/specimen/Playwrite+NG+Modern"

  font "PlaywriteNGModern[wght].ttf"

  # No zap stanza required
end
