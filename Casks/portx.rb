cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.9,10.37"
  sha256 arm:   "45C8F41415798EF9CE31877C21B8E64DEECE937873AD253458DEB8ECEDE7A657",
         intel: "440C1469425CC7FFAF9B0BA892C7838D3CAF17C45F88A0C7576F22C97A2D8975"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}-#{arch}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest-#{arch}.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
