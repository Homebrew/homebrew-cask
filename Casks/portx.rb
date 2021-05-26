cask "portx" do
  version "1.1.1"
  sha256 "be19b6d953697e9e6137dec10139cc867a270d8ed0598ff7e2ed70781f2810ac"

  url "https://cdn.netsarang.net/0ac7ea20/PortX-#{version}.dmg", verified: "cdn.netsarang.net"
  name "portx"
  desc "Let's manage all the servers by session"
  homepage "https://www.netsarang.com/en/"

  livecheck do
    skip "No version information available"
  end

  app "PortX.app"

  zap trash: [
    "~/Library/Application Support/PortX/Cache",
    "~/Library/Application Support/PortX/Code Cache",
    "~/Library/Application Support/PortX/Dictionaries",
    "~/Library/Application Support/PortX/GPUCache",
    "~/Library/Application Support/PortX/Local Storage",
    "~/Library/Application Support/PortX/Network Persistent State",
    "~/Library/Application Support/PortX/PortX.log",
    "~/Library/Application Support/PortX/Preferences",
    "~/Library/Application Support/PortX/Session Storage",
    "~/Library/Application Support/PortX/blob_storage",
  ]
end
