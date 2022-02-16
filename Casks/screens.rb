cask "screens" do
  version "4.9.3,1643990258"
  sha256 "4889a5fd04d5c8514a9bc6324638d01ee91c978db63d81aaeb271942c3774dde"

  url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/Screens_#{version.csv.first}b#{version.csv.second}.zip"
  name "Screens"
  desc "Remote access software focusing on usability"
  homepage "https://edovia.com/screens-mac/"

  livecheck do
    url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Screens #{version.major}.app"

  uninstall launchctl: "com.edovia.screens.launcher",
            quit:      "com.edovia.screens#{version.major}.mac"

  zap trash: [
    "~/Library/Application Scripts/com.edovia.screens#{version.major}.mac",
    "~/Library/Application Scripts/com.edovia.screens.launcher",
    "~/Library/Containers/com.edovia.screens#{version.major}.mac",
    "~/Library/Containers/com.edovia.screens.launcher",
    "~/Library/Preferences/com.edovia.screens#{version.major}.mac.plist",
    "~/Library/Logs/Screens",
  ]
end
