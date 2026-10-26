cask "rescuetime" do
  version "3.4.1.4"
  sha256 "d7ee441b7d162414278af7871a9115c11fd01022b51733a0ef9ca366b34e1d67"

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
    "~/Library/Preferences/com.rescuetime.RescueTime.plist",
    "~/Library/RescueTime.com",
  ]
end
