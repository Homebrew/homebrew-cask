cask "screens-assist" do
  version "2.1,32400"
  sha256 "9b7ab72322548d2c64aabb11a5110cc3c1ddc3868a9da82cd639f7d11091b8e1"

  url "https://updates.edovia.com/com.edovia.screens.connect.express/ScreensAssist_#{version.csv.first}b#{version.csv.second}.zip"
  name "Screens Assist"
  desc "Share screens link"
  homepage "https://edovia.com/en/screens-assist/"

  livecheck do
    url "https://updates.edovia.com/com.edovia.screens.connect.express/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Screens Assist.app"

  zap trash: [
    "~/Library/Application Support/com.edovia.screens.connect.express",
    "~/Library/Caches/com.edovia.screens.connect.express",
    "~/Library/HTTPStorages/com.edovia.screens.connect.express",
    "~/Library/Preferences/com.edovia.screens.connect.express.plist",
    "~/Library/Saved Application State/com.edovia.screens.connect.express.savedState",
  ]
end
