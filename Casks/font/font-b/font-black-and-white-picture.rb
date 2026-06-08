cask "font-black-and-white-picture" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blackandwhitepicture/BlackAndWhitePicture-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Black And White Picture"
  homepage "https://fonts.google.com/specimen/Black+And+White+Picture"

  font "BlackAndWhitePicture-Regular.ttf"

  # No zap stanza required
end
