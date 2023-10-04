cask "nordlayer" do
  version "3.0.0"
  sha256 "76e15375a15a004273a22847ebefef4b6cb51b584f3e5f6453baf12d572eff01"

  url "https://downloads.nordlayer.com/mac/latest/NordLayer_v#{version}.zip"
  name "NordLayer"
  desc "Security software for business"
  homepage "https://nordlayer.com/"

  livecheck do
    url "https://downloads.nordlayer.com/mac/update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
