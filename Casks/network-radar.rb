cask "network-radar" do
  version "2.10"
  sha256 :no_check

  url "https://witt-software.com/downloads/networkradar/Network%20Radar.dmg"
  appcast "https://www.witt-software.com/downloads/networkradar/appcast.xml"
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
