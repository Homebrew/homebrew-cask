cask "screens" do
  version "4.12.8,1677528436"
  sha256 "c5efda4c9d94a61f57118bb5e237fc795516c316f156bfefb624ed74fcb8dbd4"

  url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/Screens_#{version.csv.first}b#{version.csv.second}.zip"
  name "Screens"
  desc "Remote access software focusing on usability"
  homepage "https://edovia.com/screens-mac/"

  livecheck do
    url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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
