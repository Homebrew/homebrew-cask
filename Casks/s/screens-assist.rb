cask "screens-assist" do
  version "1.6,20081"
  sha256 "b7b9589b559bbecb3401613b7da635b59175afb7cc099d4e6a1900a0de98942e"

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
