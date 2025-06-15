cask "font-parastoo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/parastoo/Parastoo%5Bwght%5D.ttf"
  name "Parastoo"
  homepage "https://github.com/googlefonts/parastoo-font"

  font "Parastoo[wght].ttf"

  # No zap stanza required
end
