cask "font-coral-pixels" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/coralpixels/CoralPixels-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Coral Pixels"
  homepage "https://fonts.google.com/specimen/Coral+Pixels"

  font "CoralPixels-Regular.ttf"

  # No zap stanza required
end
