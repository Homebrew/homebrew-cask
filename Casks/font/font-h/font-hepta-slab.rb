cask "font-hepta-slab" do
  version "1.102"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/heptaslab/HeptaSlab%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Hepta Slab"
  homepage "https://fonts.google.com/specimen/Hepta+Slab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hepta Slab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HeptaSlab[wght].ttf"

  # No zap stanza required
end
