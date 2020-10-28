cask "rescuetime" do
  version "2.16.5.1"
  sha256 "4fd0b3d54963a00820fae8e405a90af1838af7a7eebcdd2169ba32845cc2ca78"

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
