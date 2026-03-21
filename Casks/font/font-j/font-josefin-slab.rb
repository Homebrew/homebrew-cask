cask "font-josefin-slab" do
  version "2.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/josefinslab"
  name "Josefin Slab"
  homepage "https://fonts.google.com/specimen/Josefin+Slab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Josefin Slab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JosefinSlab-Italic[wght].ttf"
  font "JosefinSlab[wght].ttf"

  # No zap stanza required
end
