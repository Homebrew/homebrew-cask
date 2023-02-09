cask "egnyte" do
  version "0.4.1_2025"
  sha256 "de55ccb4b271bc1d2f27e71843a04f4b5dd4b083e5c6d8cef5e592a24f2f1eb9"

  url "https://egnyte-cdn.egnyte.com/desktopapp/mac/en-us/#{version.underscores_to_dots.major_minor_patch}/Egnyte_#{version}.dmg"
  name "Egnyte"
  desc "Real-time access to your files and folders stored in the cloud"
  homepage "https://www.egnyte.com/"

  livecheck do
    url "https://helpdesk.egnyte.com/hc/en-us/articles/205237150-Desktop-App-Installers"
    strategy :page_match do |page|
      match = page.match(/Egnyte_(\d+(?:\.\d+)+)_(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}_#{match[2]}"
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
