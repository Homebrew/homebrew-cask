cask "font-roboto-slab" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/robotoslab/RobotoSlab%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Roboto Slab"
  homepage "https://fonts.google.com/specimen/Roboto+Slab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Roboto Slab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RobotoSlab[wght].ttf"

  # No zap stanza required
end
