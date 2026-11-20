cask "rescuetime" do
  version "3.4.2.5"
  sha256 "de9b3f363c56bdeedf3918d30ec3ec7b55c0f122e4d6d41144504a3345050bf1"

  url "https://assets.rescuetime.com/installers/RescueTimeInstaller_#{version}.app.zip"
  name "RescueTime"
  desc "Time optimising application"
  homepage "https://www.rescuetime.com/"

  livecheck do
    url "https://www.rescuetime.com/installers/appcast/rtx"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "RescueTime.app"

  uninstall launchctl: "com.rescuetime.RescueTime-Helper"

  zap trash: [
    "~/Library/Application Scripts/com.rescuetime.RescueTime-Helper",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime-helper.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*",
    "~/Library/Caches/com.rescuetime.RescueTime",
    "~/Library/Containers/com.rescuetime.RescueTime-Helper",
    "~/Library/HTTPStorages/com.rescuetime.RescueTime*",
    "~/Library/Preferences/com.rescuetime.RescueTime.plist",
    "~/Library/RescueTime.com",
    "~/Library/WebKit/com.rescuetime.RescueTime",
  ]
end
