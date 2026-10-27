cask "font-gamja-flower" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gamjaflower/GamjaFlower-Regular.ttf"
  name "Gamja Flower"
  homepage "https://fonts.google.com/specimen/Gamja+Flower"

  font "GamjaFlower-Regular.ttf"

  zap :not_required
end
