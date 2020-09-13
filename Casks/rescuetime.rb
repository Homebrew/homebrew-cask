cask "rescuetime" do
  version "2.16.3.1"
  sha256 "e4a150a0e9278a32c787475c7549b5af47634b0061146e69552bc02a6396a2bf"

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
