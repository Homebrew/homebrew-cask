cask "screens" do
  version "4.8,1605110645"
  sha256 "a5aed571356c279588997c3be3c6802d565bde2fed521ac06c02fb72cdc3b3cd"

  url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/Screens_#{version.before_comma}b#{version.after_comma}.zip"
  appcast "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/appcast.xml"
  name "Screens"
  desc "Remote access software focusing on usability"
  homepage "https://edovia.com/screens-mac/"

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
    "~/Library/Logs/Screens",
  ]
end
