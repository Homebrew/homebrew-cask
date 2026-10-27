cask "font-indie-flower" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/indieflower/IndieFlower-Regular.ttf"
  name "Indie Flower"
  homepage "https://fonts.google.com/specimen/Indie+Flower"

  font "IndieFlower-Regular.ttf"

  zap :not_required
end
