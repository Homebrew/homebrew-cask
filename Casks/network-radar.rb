cask "network-radar" do
  version "2.10"
  sha256 "566f9049d68e7287a5a2dc1da0ff04bca540db8d23fbbddd0da8546302892df5"

  url "https://witt-software.com/downloads/networkradar/Network%20Radar.dmg"
  appcast "https://www.witt-software.com/releasenotes/?app=networkradar"
  name "Network Radar"
  desc "Tool to scan and monitor the network"
  homepage "https://www.witt-software.com/networkradar"

  depends_on macos: ">= :el_capitan"

  app "Network Radar.app"

  zap trash: [
    "~/Library/Application Scripts/com.mac-attender.Network-Radar*",
    "~/Library/Containers/com.mac-attender.Network-Radar*",
  ]
end
