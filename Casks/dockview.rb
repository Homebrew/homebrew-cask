cask "dockview" do
  version "1.3.7,137"
  sha256 :no_check

  url "https://macplus-software.com/downloads/DockViewStandard.zip",
      verified: "macplus-software.com"
  name "dockview"
  desc "Utility to preview application windows in the dock"
  homepage "https://noteifyapp.com/dockview/"

  livecheck do
    url "https://macplus-software.com/downloads/DockViewStandard.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "DockView.app"

  zap trash: [
    "~/Library/Caches/com.sergey-gerasimenko.DockView",
    "~/Library/Preferences/com.sergey-gerasimenko.DockView.plist",
    "~/Library/Application Support/com.sergey-gerasimenko.DockView",
  ]
end
