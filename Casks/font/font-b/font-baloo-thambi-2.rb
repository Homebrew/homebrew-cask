cask "font-baloo-thambi-2" do
  version "1.700"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloothambi2/BalooThambi2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Thambi 2"
  homepage "https://fonts.google.com/specimen/Baloo+Thambi+2"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Baloo Thambi 2",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BalooThambi2[wght].ttf"

  # No zap stanza required
end
