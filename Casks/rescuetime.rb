cask "rescuetime" do
  version "2.16.4.2"
  sha256 "ac9650230c820a2e270cd05c65e6e1d16c03f24a4fcbbf0b8b6434980f523723"

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
