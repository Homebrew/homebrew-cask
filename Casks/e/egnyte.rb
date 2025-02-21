cask "egnyte" do
  version "1.4.1,2195"
  sha256 "748bb5892151ad0394deca2de6b3631e4a30233304f989a925090c352bf41917"

  url "https://egnyte-cdn.egnyte.com/desktopapp/mac/en-us/#{version.csv.first}/Egnyte_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Egnyte"
  desc "Client for the Egnyte cloud storage service"
  homepage "https://www.egnyte.com/"

  livecheck do
    url "https://egnyte-cdn.egnyte.com/desktopapp/mac/en-us/versions/default.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :ventura"

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
