cask "font-bhavuka" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bhavuka/Bhavuka-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bhavuka"
  homepage "https://fonts.google.com/specimen/Bhavuka"

  font "Bhavuka-Regular.ttf"

  # No zap stanza required
end
