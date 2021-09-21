cask "dockview" do
  version "1.03,103"
  sha256 :no_check

  url "https://macplus-software.com/downloads/DockViewStandard.zip",
      verified: "macplus-software.com"
  name "dockview"
  desc "Add a preview of the windows of the selected application in the Dock"
  homepage "https://noteifyapp.com/dockview/"

  livecheck do
    url "https://macplus-software.com/downloads/DockViewStandard.xml"
    strategy :sparkle
  end

  auto_updates true

  app "DockView.app"

  zap trash: [
    "~/Library/Caches/com.sergey-gerasimenko.DockView",
    "~/Library/Preferences/com.sergey-gerasimenko.DockView.plist",
    "~/Library/Application Support/com.sergey-gerasimenko.DockView",
  ]
end
