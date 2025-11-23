cask "font-josefin-slab" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/josefinslab"
  name "Josefin Slab"
  homepage "https://fonts.google.com/specimen/Josefin+Slab"

  font "JosefinSlab-Italic[wght].ttf"
  font "JosefinSlab[wght].ttf"

  # No zap stanza required
end
