cask "network-radar" do
  version "3.0.1,316b"
  sha256 :no_check

  url "https://witt-software.com/downloads/networkradar/Network%20Radar.dmg"
  name "Network Radar"
  desc "Tool to scan and monitor the network"
  homepage "https://www.witt-software.com/networkradar"

  livecheck do
    url "https://www.witt-software.com/downloads/networkradar/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Network Radar.app"

  zap trash: [
    "~/Library/Application Scripts/com.mac-attender.Network-Radar*",
    "~/Library/Containers/com.mac-attender.Network-Radar*",
    "~/Library/Preferences/com.mac-attender.Network-Radar.plist",
  ]
end
