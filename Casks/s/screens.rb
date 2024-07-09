cask "screens" do
  version "4.12.16,1696599453"
  sha256 "a5c58f35e250ba40ddbd7b0c3d8c002403390f0548cab8ad9bb118fcfb734bbf"

  url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/Screens_#{version.csv.first}b#{version.csv.second}.zip"
  name "Screens"
  desc "Remote access software focusing on usability"
  homepage "https://edovia.com/screens-mac/"

  deprecate! date: "2024-07-09", because: :moved_to_mas

  auto_updates true
  depends_on macos: ">= :monterey"

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
