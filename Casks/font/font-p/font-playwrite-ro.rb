cask "font-playwrite-ro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritero/PlaywriteRO%5Bwght%5D.ttf"
  name "Playwrite RO"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteRO[wght].ttf"

  # No zap stanza required
end
