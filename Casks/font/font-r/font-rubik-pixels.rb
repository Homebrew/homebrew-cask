cask "font-rubik-pixels" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikpixels/RubikPixels-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Pixels"
  homepage "https://fonts.google.com/specimen/Rubik+Pixels"

  font "RubikPixels-Regular.ttf"

  # No zap stanza required
end
