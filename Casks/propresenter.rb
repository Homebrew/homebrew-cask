cask "propresenter" do
  version "7.1.3,117506823"
  sha256 "e6b804befba44714f9a4984b97b9c59a4c6d5ec8130f0c1375fe9b7dc9db04a5"

  url "https://renewedvision.com/downloads/propresenter/mac/ProPresenter_#{version.before_comma}_#{version.after_comma}.zip"
  appcast "https://api.renewedvision.com/v1/pro/upgrade?platform=macos&osVersion=0&appVersion=0&buildNumber=0&includeNotes=0"
  name "ProPresenter"
  homepage "https://www.renewedvision.com/propresenter.php"

  depends_on macos: ">= :mojave"

  app "ProPresenter.app"

  zap trash: [
    "~/Library/Application Support/RenewedVision/ProPresenter6",
    "~/Library/Caches/KSCrashReports/ProPresenter 6",
    "~/Library/Caches/Sessions/ProPresenter 6",
    "~/Library/Caches/com.renewedvision.ProPresenter6",
    "~/Library/Preferences/com.renewedvision.ProPresenter6.plist",
    "/Library/Application Support/RenewedVision",
    "/Library/Caches/com.renewedvision.ProPresenter6",
    "/Users/Shared/Renewed Vision Media",
  ],
      rmdir: [
        "~/Library/Application Support/RenewedVision",
        "~/Library/Caches/KSCrashReports",
        "~/Library/Caches/Sessions",
      ]
end
