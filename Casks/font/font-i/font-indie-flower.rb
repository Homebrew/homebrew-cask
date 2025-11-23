cask "font-indie-flower" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/indieflower/IndieFlower-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Indie Flower"
  homepage "https://fonts.google.com/specimen/Indie+Flower"

  font "IndieFlower-Regular.ttf"

  # No zap stanza required
end
