cask "nordlayer" do
  version "2.5.1,1965"
  sha256 "05b05497340d950c4c6ff556a689871195b6f0585739d8c5e1ca361878c61a7d"

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
