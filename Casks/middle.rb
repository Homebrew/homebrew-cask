cask "middle" do
  version "1.5.28,62"
  sha256 "926777e3086384b4b005ca1c44ed1a0aa0491df07fd5b28897188be8b3001afd"

  url "https://middleclick.app/downloads/Middle#{version.before_comma}.dmg"
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
