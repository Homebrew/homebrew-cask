cask "portx" do
  version "2.0.12,10.24"
  sha256 "A3F9AA9DAD1F584C55B551A7F45A957227C496271E42A6E322D7015AD6F4C2A1"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version.csv.first}.dmg",
      verified: "cdn.netsarang.net/"
  name "portx"
  desc "SSH Client"
  homepage "https://portx.online/en/portx/"

  livecheck do
    url "https://cdn.netsarang.net/0ac7ea20/PortX-latest.dmg"
    strategy :extract_plist
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX",
    "~/Library/Logs/PortX",
  ]
end
