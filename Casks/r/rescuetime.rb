cask "rescuetime" do
  version "3.2.5.1"
  sha256 "4b04faef32f89144ddb656fc1670156ce0e8ae5c5098380ca40b16a827467022"

  url "https://assets.rescuetime.com/installers/RescueTimeInstaller_#{version}.app.zip"
  name "RescueTime"
  desc "Time optimising application"
  homepage "https://www.rescuetime.com/"

  livecheck do
    url "https://www.rescuetime.com/installers/appcast/rtx"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "RescueTime.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*",
    "~/Library/Caches/com.rescuetime.RescueTime",
    "~/Library/Preferences/com.rescuetime.RescueTime.plist",
    "~/Library/RescueTime.com",
  ]
end
