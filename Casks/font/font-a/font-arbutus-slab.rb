cask "font-arbutus-slab" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arbutusslab/ArbutusSlab-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Arbutus Slab"
  homepage "https://fonts.google.com/specimen/Arbutus+Slab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arbutus Slab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ArbutusSlab-Regular.ttf"

  # No zap stanza required
end
