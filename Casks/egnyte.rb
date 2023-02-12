cask "egnyte" do
  version "0.4.1,2025"
  sha256 "de55ccb4b271bc1d2f27e71843a04f4b5dd4b083e5c6d8cef5e592a24f2f1eb9"

  url "https://egnyte-cdn.egnyte.com/desktopapp/mac/en-us/#{version.csv.first}/Egnyte_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Egnyte"
  desc "Client for the Egnyte cloud storage service"
  homepage "https://www.egnyte.com/"

  livecheck do
    url "https://helpdesk.egnyte.com/api/v2/help_center/en-us/articles/205237150/"
    regex(/Egnyte[._-]v?(\d+(?:\.\d+)+)_(\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Egnyte.app"

  zap trash: [
    "~/Library/Application Scripts/FELUD555VC.group.com.egnyte.DesktopApp/",
    "~/Library/Application Scripts/com.egnyte.DesktopApp.FileProvider/",
    "~/Library/Application Scripts/com.egnyte.DesktopApp/",
    "~/Library/Application Support/FileProvider/com.egnyte.DesktopApp.FileProvider/",
    "~/Library/Caches/SentryCrash/EgnyteLaunchHelper/",
    "~/Library/Caches/SentryCrash/EgnyteUpgradeChecker/",
    "~/Library/CloudStorage/Egnyte-*/",
    "~/Library/Containers/com.egnyte.DesktopApp.FileProvider/",
    "~/Library/Containers/com.egnyte.DesktopApp/",
    "~/Library/Group Containers/FELUD555VC.group.com.egnyte.DesktopApp/",
    "~/Library/Preferences/com.apple.FileProvider/com.egnyte.DesktopApp.FileProvider/",
  ]
end
