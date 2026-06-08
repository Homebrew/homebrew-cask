cask "font-alfa-slab-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alfaslabone/AlfaSlabOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alfa Slab One"
  homepage "https://fonts.google.com/specimen/Alfa+Slab+One"

  font "AlfaSlabOne-Regular.ttf"

  # No zap stanza required
end
