cask "nordlayer" do
  version "3.5.1"
  sha256 "772f2a6492cc1c5ac3e14adcf1817521d13834905e48e447b88dd1546df6ff85"

  url "https://downloads.nordlayer.com/mac/latest/NordLayer_v#{version}.pkg"
  name "NordLayer"
  desc "Security software for business"
  homepage "https://nordlayer.com/"

  livecheck do
    url "https://downloads.nordlayer.com/mac/update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "NordLayer_v#{version}.pkg"

  uninstall launchctl: [
              "com.nordvpn.macos.teams",
              "com.nordvpn.macos.teams.assistant",
              "com.nordvpn.macos.teams.helper",
            ],
            quit:      "com.nordvpn.macos.teams",
            pkgutil:   "com.nordvpn.macos.teams"

  zap trash: [
    "~/Library/Application Scripts/com.nordvpn.macos.teams",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nordvpn.macos.teams.sfl*",
    "~/Library/Application Support/com.nordvpn.macos.teams",
    "~/Library/Caches/com.nordvpn.macos.teams",
    "~/Library/Containers/com.nordvpn.macos.teams",
    "~/Library/HTTPStorages/com.nordvpn.macos.teams",
    "~/Library/Preferences/com.nordvpn.macos.teams.plist",
  ]
end
