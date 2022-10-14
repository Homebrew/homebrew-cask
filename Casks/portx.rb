cask "portx" do
  arch arm: "arm64", intel: "x64"

  version "2.1.5,10.33"
  sha256 arm:   "B91A60A6498378CB2E8A33CE26ED5729DEAF7B681256A195FC559891FFCA4BA4",
         intel: "1402FC53B25423DE5946C502AD1A945C1256EA487DADCBA0C1BF45E17D958CA2"

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
