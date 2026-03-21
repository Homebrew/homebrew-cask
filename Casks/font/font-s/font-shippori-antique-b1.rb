cask "font-shippori-antique-b1" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shipporiantiqueb1/ShipporiAntiqueB1-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shippori Antique B1"
  homepage "https://fonts.google.com/specimen/Shippori+Antique+B1"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shippori Antique B1",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShipporiAntiqueB1-Regular.ttf"

  # No zap stanza required
end
