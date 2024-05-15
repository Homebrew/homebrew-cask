cask "font-arbutus-slab" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arbutusslab/ArbutusSlab-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Arbutus Slab"
  homepage "https://fonts.google.com/specimen/Arbutus+Slab"

  font "ArbutusSlab-Regular.ttf"

  # No zap stanza required
end
