cask "font-croissant-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/croissantone/CroissantOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Croissant One"
  homepage "https://fonts.google.com/specimen/Croissant+One"

  font "CroissantOne-Regular.ttf"

  # No zap stanza required
end
