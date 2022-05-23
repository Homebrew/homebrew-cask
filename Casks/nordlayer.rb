cask "nordlayer" do
  version "2.2.0,1823"
  sha256 "d8d701346ef29a04418c83c8aafc99d3ec322583485cdb9aeea68cf91cc840ff"

  url "https://downloads.nordlayer.com/mac/latest/NordLayer_v#{version.csv.first}.zip"
  name "NordLayer"
  desc "Security software for business"
  homepage "https://nordlayer.com/"

  livecheck do
    url "https://downloads.nordlayer.com/mac/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "NordLayer.app"

  uninstall quit:      "com.nordvpn.macos.teams",
            launchctl: "com.nordvpn.macos.teams"

  zap trash: [
    "~/Library/Application Support/com.nordvpn.macos.teams",
    "~/Library/Caches/com.nordvpn.macos.teams",
    "~/Library/HTTPStorages/com.nordvpn.macos.teams",
    "~/Library/Preferences/com.nordvpn.macos.teams.plist",
  ]
end
