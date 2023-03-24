cask "activedock" do
  version "2.401"
  sha256 :no_check

  url "https://macplus-software.com/downloads/ActiveDock.zip",
      verified: "macplus-software.com/downloads/"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  livecheck do
    url "https://macplus-software.com/downloads/ActiveDock.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.major}.app"

  zap trash: [
    "/Users/razvanazamfirei/Library/Application Support/ActiveDock #{version.major}",
    "/Users/razvanazamfirei/Library/Application Support/com.sergey-gerasimenko.ActiveDock-#{version.major}",
    "/Users/razvanazamfirei/Library/Caches/com.sergey-gerasimenko.ActiveDock-#{version.major}",
    "/Users/razvanazamfirei/Library/HTTPStorages/com.sergey-gerasimenko.ActiveDock-#{version.major}",
    "/Users/razvanazamfirei/Library/Preferences/com.sergey-gerasimenko.ActiveDock-#{version.major}.plist",
  ]
end
