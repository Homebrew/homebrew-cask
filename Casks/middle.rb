cask "middle" do
  version "1.4.6"
  sha256 "18ac619d214800788aa7526a75337dae04406577045fd82a00103ff11324ff4c"

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
