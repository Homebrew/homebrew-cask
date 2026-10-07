cask "speedify" do
  version "17.2.1,4121"
  sha256 "1c89b73e14f55d66e222b1ef0e6aac6591a6fba635911a313f851193ddfd0eca"

  url "https://downloads.speedify.com/Speedify-#{version.csv.first}.#{version.csv.second}.dmg"
  name "Speedify"
  desc "VPN client"
  homepage "https://speedify.com/"

  livecheck do
    url "https://downloads.speedify.com/SpeedifyInstaller.dmg"
    strategy :extract_plist
  end

  depends_on :macos

  app "Speedify.app"

  uninstall launchctl: [
    "me.connectify.SMJobBlessHelper",
    "SpeedifyService",
    "SwitchboardService",
  ]

  zap trash: [
    "~/Library/Application Scripts/42L9495X72.speedify",
    "~/Library/Application Scripts/com.connectify.Speedify",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.connectify.speedify.sfl*",
    "~/Library/Containers/com.connectify.Speedify",
    "~/Library/Group Containers/42L9495X72.speedify",
    "~/Library/Speedify",
  ]
end
