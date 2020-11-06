cask "app-tamer" do
  version "2.6"
  sha256 "37271a519fcf9902bd89a12c14355dfcb33e2b75ec21ffc8b0fab614231193b8"

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT"
  name "AppTamer"
  desc "CPU management applicataion"
  homepage "https://www.stclairsoft.com/AppTamer/"

  app "App Tamer.app"

  zap trash: [
    "/Library/LaunchDaemons/com.stclairsoft.AppTamerAgent.plist",
    "/Library/PrivilegedHelperTools/com.stclairsoft.AppTamerAgent",
    "~/Library/Caches/com.stclairsoft.AppTamer",
    "~/Library/Preferences/com.stclairsoft.AppTamer.plist",
  ]
end
