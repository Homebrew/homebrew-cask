cask "font-shippori-antique" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shipporiantique/ShipporiAntique-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shippori Antique"
  homepage "https://fonts.google.com/specimen/Shippori+Antique"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shippori Antique",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShipporiAntique-Regular.ttf"

  # No zap stanza required
end
