cask "screens" do
  version "4.12.7,1674762178"
  sha256 "c709efd79d44d75e61ecfee9f48b2d7c2cb5b6f756d9aebe03654306159300eb"

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
    "~/Library/Preferences/com.edovia.screens#{version.major}.mac.plist",
    "~/Library/Logs/Screens",
  ]
end
