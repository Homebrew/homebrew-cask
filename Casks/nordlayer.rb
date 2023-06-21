cask "nordlayer" do
  version "2.8.2"
  sha256 "1b490101f96d6c6fcb036230e1a3c2051e5520899524601b8333e2ad03ce2753"

  url "https://downloads.nordlayer.com/mac/latest/NordLayer_v#{version}.zip"
  name "NordLayer"
  desc "Security software for business"
  homepage "https://nordlayer.com/"

  livecheck do
    url "https://downloads.nordlayer.com/mac/update.xml"
    strategy :sparkle, &:short_version
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
