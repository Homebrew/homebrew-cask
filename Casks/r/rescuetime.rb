cask "rescuetime" do
  version "3.2.0.10"
  sha256 :no_check

  url "https://assets.rescuetime.com/installers/RescueTimeInstaller_X.app.zip"
  name "RescueTime"
  desc "Time optimising application"
  homepage "https://www.rescuetime.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates

  app "RescueTime.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*",
    "~/Library/Caches/com.rescuetime.RescueTime",
    "~/Library/Preferences/com.rescuetime.RescueTime.plist",
    "~/Library/RescueTime.com",
  ]
end
