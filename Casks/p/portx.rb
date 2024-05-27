cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.2.8,10.59"
  sha256 arm:   "CE43DB4D71845836DDCE3C7FDA6E420FEEFA219CDA2E70D0CCD5B858F4A08A8C",
         intel: "05DF55F292966AAEB11E5413AE08CA13CDFAC5F962EF966F80BD060545C2D722"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
