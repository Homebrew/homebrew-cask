cask "font-miriam-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/miriamlibre/MiriamLibre%5Bwght%5D.ttf"
  name "Miriam Libre"
  homepage "https://fonts.google.com/specimen/Miriam+Libre"

  font "MiriamLibre[wght].ttf"

  # No zap stanza required
end
