cask "screens" do
  version "4.8.4,1609790953"
  sha256 "dc7c88211e8ff8ca475f9ecc46fd5443308e27091c77bbfd2ce4b4b07a93f833"

  url "https://updates.edovia.com/com.edovia.screens#{version.major}.mac/Screens_#{version.before_comma}b#{version.after_comma}.zip"
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
    "~/Library/Logs/Screens",
  ]
end
