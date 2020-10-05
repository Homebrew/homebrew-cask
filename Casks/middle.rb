cask "middle" do
  version "1.5.2"
  sha256 "8e10c59539a51854aa7d1536c975cf7bc53ed5bd3e989c34b6d7686ebf005df4"

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
