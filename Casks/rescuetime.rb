cask "rescuetime" do
  version "2.16.6.1"
  sha256 "e8edb268b37d24c64cacc5dc28ddd4310496c244c73c5722a4d4a12c6fe26c71"

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
