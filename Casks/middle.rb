cask "middle" do
  version "1.6.2,65"
  sha256 "28fa9dd31686c51b56cee4cecee84c86f5d6cb29bc3d60d0b481ce42d3bed6b4"

  url "https://middleclick.app/downloads/Middle#{version.csv.first}.dmg"
  name "Middle"
  desc "Add middle click for Trackpad and Magic Mouse"
  homepage "https://middleclick.app/"

  livecheck do
    url "https://middleclick.app/downloads/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Middle.app"

  uninstall quit: "com.knollsoft.Middle"

  zap trash: [
    "~/Library/Application Support/Middle",
    "~/Library/Caches/com.knollsoft.Middle",
    "~/Library/Containers/com.knollsoft.MiddleLauncher",
    "~/Library/Cookies/com.knollsoft.Middle.binarycookies",
    "~/Library/Preferences/com.knollsoft.Middle.plist",
  ]
end
