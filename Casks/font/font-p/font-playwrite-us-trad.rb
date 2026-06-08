cask "font-playwrite-us-trad" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteustrad/PlaywriteUSTrad%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite US Trad"
  homepage "https://fonts.google.com/specimen/Playwrite+US+Trad"

  font "PlaywriteUSTrad[wght].ttf"

  # No zap stanza required
end
