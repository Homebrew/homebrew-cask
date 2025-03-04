cask "screens-assist" do
  version "1.6.1,20082"
  sha256 "bca4d193c7358f1c5982efabfda3dc3edebfbce515988d3c50c536d68905f94e"

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
