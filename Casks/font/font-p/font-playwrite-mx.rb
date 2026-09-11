cask "font-playwrite-mx" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritemx/PlaywriteMX%5Bwght%5D.ttf"
  name "Playwrite MX"
  homepage "https://fonts.google.com/specimen/Playwrite+MX"

  font "PlaywriteMX[wght].ttf"

  # No zap stanza required
end
