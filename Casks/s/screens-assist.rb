cask "screens-assist" do
  version "1.5,20075"
  sha256 "ac09094af5b02bf8c4f1ed87796e4eaabaef609c954300622e4450eb1b7eaeb8"

  url "https://updates.edovia.com/com.edovia.screens.connect.express/ScreensAssist_#{version.csv.first}b#{version.csv.second}.zip"
  name "Screens Assist"
  desc "Share screens link"
  homepage "https://edovia.com/en/screens-assist/"

  livecheck do
    url "https://updates.edovia.com/com.edovia.screens.connect.express/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Screens Assist.app"

  zap trash: [
    "~/Library/Application Support/com.edovia.screens.connect.express",
    "~/Library/Caches/com.edovia.screens.connect.express",
    "~/Library/HTTPStorages/com.edovia.screens.connect.express",
    "~/Library/Preferences/com.edovia.screens.connect.express.plist",
    "~/Library/Saved Application State/com.edovia.screens.connect.express.savedState",
  ]
end
