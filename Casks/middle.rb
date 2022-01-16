cask "middle" do
  version "1.6.6,69"
  sha256 "fe9d1dba5e8e5ac080d3794d453537450cd26e21ae64bcfc3de32eff7a276fac"

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
    "~/Library/Application Scripts/com.knollsoft.MiddleLauncher",
    "~/Library/Application Support/Middle",
    "~/Library/Caches/com.knollsoft.Middle",
    "~/Library/Containers/com.knollsoft.MiddleLauncher",
    "~/Library/Cookies/com.knollsoft.Middle.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Middle",
    "~/Library/HTTPStorages/com.knollsoft.Middle.binarycookies",
    "~/Library/Preferences/com.knollsoft.Middle.plist",
  ]
end
