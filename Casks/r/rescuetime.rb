cask "rescuetime" do
  version "3.4.1.6"
  sha256 "a8491b8a9eaa7ffc0ded24dd13af62b250c84898489519c1965b72acd41b3e68"

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
