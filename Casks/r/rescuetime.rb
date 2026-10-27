cask "rescuetime" do
  version "3.4.1.4"
  sha256 "4c80f9e35ef59f1ff56f1f5fcc1b6c25025cacfc40f5116322b5e5c5aa23e417"

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

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*",
    "~/Library/Caches/com.rescuetime.RescueTime",
    "~/Library/HTTPStorages/com.rescuetime.RescueTime*",
    "~/Library/Preferences/com.rescuetime.RescueTime.plist",
    "~/Library/RescueTime.com",
    "~/Library/WebKit/com.rescuetime.RescueTime",
  ]
end
