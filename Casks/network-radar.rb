cask "network-radar" do
  version "2.9.2"
  sha256 "8726f8f7eb61d8f31279477ad4aa9af7429374658a80343e7700b56d6e987ff0"

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
