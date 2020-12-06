cask "middle" do
  version "1.5.7"
  sha256 "0778fd70e1e69ae5508062f7050f1c662389ed67c99e475c56f0eaba8fee424a"

  url "https://middleclick.app/downloads/Middle#{version}.dmg"
  appcast "https://middleclick.app/downloads/updates.xml"
  name "Middle"
  homepage "https://middleclick.app/"

  auto_updates true

  app "Middle.app"

  uninstall quit: "com.knollsoft.Middle"

  zap trash: [
    "~/Library/Containers/com.knollsoft.MiddleLauncher",
    "~/Library/Preferences/com.knollsoft.Middle.plist",
    "~/Library/Caches/com.knollsoft.Middle",
    "~/Library/Cookies/com.knollsoft.Middle.binarycookies",
    "~/Library/Application Support/Middle",
  ]
end
