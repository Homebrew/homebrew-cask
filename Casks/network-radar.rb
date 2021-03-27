cask "network-radar" do
  version "2.10,290b"
  sha256 :no_check

  url "https://witt-software.com/downloads/networkradar/Network%20Radar.dmg"
  name "Network Radar"
  desc "Tool to scan and monitor the network"
  homepage "https://www.witt-software.com/networkradar"

  livecheck do
    url "https://www.witt-software.com/downloads/networkradar/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Network Radar.app"

  zap trash: [
    "~/Library/Application Scripts/com.mac-attender.Network-Radar*",
    "~/Library/Containers/com.mac-attender.Network-Radar*",
  ]
end
