cask "screens" do
  version "4.12.11,1690321183"
  sha256 "fecb062a257a3dda8efeadfd45a1929d919ee92d4ab27cc4844fd9711fded86b"

  url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/Screens_#{version.csv.first}b#{version.csv.second}.zip"
  name "Screens"
  desc "Remote access software focusing on usability"
  homepage "https://edovia.com/screens-mac/"

  livecheck do
    url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Screens #{version.major}.app"

  uninstall launchctl: "com.edovia.screens.launcher",
            quit:      "com.edovia.screens#{version.major}.mac"

  zap trash: [
    "~/Library/Application Scripts/com.edovia.screens#{version.major}.mac",
    "~/Library/Application Scripts/com.edovia.screens.launcher",
    "~/Library/Containers/com.edovia.screens#{version.major}.mac",
    "~/Library/Containers/com.edovia.screens.launcher",
    "~/Library/Logs/Screens",
    "~/Library/Preferences/com.edovia.screens#{version.major}.mac.plist",
  ]
end
