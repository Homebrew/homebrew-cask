cask "font-antic-slab" do
  version "001.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anticslab/AnticSlab-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Antic Slab"
  homepage "https://fonts.google.com/specimen/Antic+Slab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Antic Slab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnticSlab-Regular.ttf"

  # No zap stanza required
end
