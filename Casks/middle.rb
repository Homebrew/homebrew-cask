cask "middle" do
  version "1.5.6"
  sha256 "82802262dac10727fe4ade62d5894cd24742e9a5dd812f35b6ca099c2d103a14"

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
