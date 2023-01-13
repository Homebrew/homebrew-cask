cask "nordlayer" do
  version "2.6.1,2020"
  sha256 "d57bf1ef84c819e77141248a005fb67ca5efaacc1dce278f73412a4d94be3752"

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
