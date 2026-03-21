cask "font-montagu-slab" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montaguslab/MontaguSlab%5Bopsz%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Montagu Slab"
  homepage "https://fonts.google.com/specimen/Montagu+Slab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Montagu Slab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MontaguSlab[opsz,wght].ttf"

  # No zap stanza required
end
