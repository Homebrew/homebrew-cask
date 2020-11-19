cask "rescuetime" do
  version "2.16.6.1"
  sha256 "a0e360b9b57e738ac05f8aaba39439c94e1e3ab4ad537083a3130cf32cae1b8c"

  url "https://www.rescuetime.com/installers/RescueTimeInstaller.pkg"
  appcast "https://www.rescuetime.com/installers/appcast"
  name "RescueTime"
  desc "Time optimising application"
  homepage "https://www.rescuetime.com/"

  pkg "RescueTimeInstaller.pkg"

  uninstall pkgutil: "com.rescuetime.RescueTime"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*",
    "~/Library/Caches/com.rescuetime.RescueTime",
    "~/Library/Preferences/com.rescuetime.RescueTime.plist",
    "~/Library/RescueTime.com",
  ]
end
