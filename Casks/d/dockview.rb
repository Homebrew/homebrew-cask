cask "dockview" do
  version "1.6.5"
  sha256 :no_check

  url "https://macplus-software.com/downloads/DockViewStandard.zip",
      verified: "macplus-software.com/downloads/"
  name "DockView"
  desc "Utility to preview application windows in the dock"
  homepage "https://noteifyapp.com/dockview/"

  livecheck do
    url "https://macplus-software.com/downloads/DockViewStandard.xml"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DockView.app"

  zap trash: [
    "~/Library/Application Support/com.sergey-gerasimenko.DockView",
    "~/Library/Caches/com.sergey-gerasimenko.DockView",
    "~/Library/Preferences/com.sergey-gerasimenko.DockView.plist",
  ]
end
