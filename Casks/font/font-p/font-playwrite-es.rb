cask "font-playwrite-es" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritees/PlaywriteES%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite ES"
  homepage "https://fonts.google.com/specimen/Playwrite+ES"

  font "PlaywriteES[wght].ttf"

  # No zap stanza required
end
