cask "egnyte" do
  version "0.10.3,2097"
  sha256 "d9e9d33ded248daf89c65d6b221cd3e4ddf39a4feb9b3b49bc71e263c94e2cb8"

  url "https://egnyte-cdn.egnyte.com/desktopapp/mac/en-us/#{version.csv.first}/Egnyte_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Egnyte"
  desc "Client for the Egnyte cloud storage service"
  homepage "https://www.egnyte.com/"

  livecheck do
    url "https://egnyte-cdn.egnyte.com/desktopapp/mac/en-us/versions/default.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :monterey"

  app "Egnyte.app"

  zap trash: [
    "~/Library/Application Scripts/com.egnyte.DesktopApp.FileProvider/",
    "~/Library/Application Scripts/com.egnyte.DesktopApp.FinderHelper",
    "~/Library/Application Scripts/com.egnyte.DesktopApp.FinderHelper.FinderSync",
    "~/Library/Application Scripts/com.egnyte.DesktopApp/",
    "~/Library/Application Scripts/FELUD555VC.group.com.egnyte.DesktopApp/",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.egnyte.desktopapp.sfl*",
    "~/Library/Application Support/FileProvider/com.egnyte.DesktopApp.FileProvider/",
    "~/Library/Caches/SentryCrash/EgnyteLaunchHelper/",
    "~/Library/Caches/SentryCrash/EgnyteUpgradeChecker/",
    "~/Library/CloudStorage/Egnyte-*/",
    "~/Library/Containers/com.egnyte.DesktopApp",
    "~/Library/Containers/com.egnyte.DesktopApp.FileProvider",
    "~/Library/Containers/com.egnyte.DesktopApp.FinderHelper",
    "~/Library/Containers/com.egnyte.DesktopApp.FinderHelper.FinderSync",
    "~/Library/Group Containers/FELUD555VC.group.com.egnyte.DesktopApp/",
    "~/Library/Preferences/com.apple.FileProvider/com.egnyte.DesktopApp.FileProvider/",
  ]
end
