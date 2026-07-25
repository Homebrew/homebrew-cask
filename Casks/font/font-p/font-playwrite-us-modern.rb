cask "font-playwrite-us-modern" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteusmodern/PlaywriteUSModern%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite US Modern"
  homepage "https://fonts.google.com/specimen/Playwrite+US+Modern"

  font "PlaywriteUSModern[wght].ttf"

  # No zap stanza required
end
