cask "egnyte" do
  version "1.19.1,2367"
  sha256 "687e35bab2d54b6c979ec6002a7f09aa6259b7331a490b5173ee8b1d29a200d0"

  url "https://egnyte-cdn.egnyte.com/desktopapp/mac/en-us/#{version.csv.first}/Egnyte_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Egnyte"
  desc "Client for the Egnyte cloud storage service"
  homepage "https://www.egnyte.com/"

  livecheck do
    url "https://egnyte-cdn.egnyte.com/desktopapp/mac/en-us/versions/default.xml"
    strategy :sparkle
  end

  depends_on macos: :sonoma

  app "Egnyte.app"

  uninstall launchctl: [
    "com.egnyte.DesktopLaunchHelper",
    "FELUD555VC.group.com.egnyte.DesktopApp.XPCBroker",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.egnyte.DesktopApp",
    "~/Library/Application Scripts/com.egnyte.DesktopApp.FileProvider",
    "~/Library/Application Scripts/com.egnyte.DesktopApp.FinderHelper",
    "~/Library/Application Scripts/com.egnyte.DesktopApp.FinderHelper.FinderSync",
    "~/Library/Application Scripts/com.egnyte.DesktopLaunchHelper",
    "~/Library/Application Scripts/FELUD555VC.group.com.egnyte.DesktopApp",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.egnyte.desktopapp.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.egnyte.desktoplaunchhelper.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/felud555vc.group.com.egnyte.desktopapp.xpcbroker.sfl*",
    "~/Library/Application Support/FileProvider/com.egnyte.DesktopApp.FileProvider",
    "~/Library/Caches/SentryCrash/EgnyteLaunchHelper",
    "~/Library/Caches/SentryCrash/EgnyteUpgradeChecker",
    "~/Library/CloudStorage/Egnyte-*",
    "~/Library/Containers/com.egnyte.DesktopApp",
    "~/Library/Containers/com.egnyte.DesktopApp.FileProvider",
    "~/Library/Containers/com.egnyte.DesktopApp.FinderHelper",
    "~/Library/Containers/com.egnyte.DesktopApp.FinderHelper.FinderSync",
    "~/Library/Containers/com.egnyte.DesktopLaunchHelper",
    "~/Library/Containers/FELUD555VC.group.com.egnyte.DesktopApp.XPCBroker",
    "~/Library/Group Containers/FELUD555VC.group.com.egnyte.DesktopApp",
    "~/Library/Preferences/com.apple.FileProvider/com.egnyte.DesktopApp.FileProvider",
  ]
end
