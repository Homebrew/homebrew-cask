cask "rescuetime" do
  version "3.2.12.3"
  sha256 "c7de80741554f19205d66bb7886b2183c02a761db7b8b0522d6d7a40a29d2e56"

  url "https://assets.rescuetime.com/installers/RescueTimeInstaller_#{version}.app.zip"
  name "RescueTime"
  desc "Time optimising application"
  homepage "https://www.rescuetime.com/"

  livecheck do
    url "https://www.rescuetime.com/installers/appcast/rtx"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

  app "RescueTime.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*",
    "~/Library/Caches/com.rescuetime.RescueTime",
    "~/Library/Preferences/com.rescuetime.RescueTime.plist",
    "~/Library/RescueTime.com",
  ]
end
