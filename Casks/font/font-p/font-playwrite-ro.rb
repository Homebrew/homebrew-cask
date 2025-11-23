cask "font-playwrite-ro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritero/PlaywriteRO%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite RO"
  homepage "https://fonts.google.com/specimen/Playwrite+RO"

  font "PlaywriteRO[wght].ttf"

  # No zap stanza required
end
