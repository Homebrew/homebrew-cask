cask "font-antic-slab" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anticslab/AnticSlab-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Antic Slab"
  homepage "https://fonts.google.com/specimen/Antic+Slab"

  font "AnticSlab-Regular.ttf"

  # No zap stanza required
end
