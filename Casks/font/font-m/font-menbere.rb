cask "font-menbere" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/menbere/Menbere%5Bwght%5D.ttf"
  name "Menbere"
  homepage "https://github.com/SorkinType/Menbere"

  font "Menbere[wght].ttf"

  # No zap stanza required
end
