cask "speedify" do
  version "17.3.0,4125"
  sha256 "afabfe8443f657ad5fb0d87c8d96faa65a0185b110bd8b3f5fc1db21af74ad72"

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
