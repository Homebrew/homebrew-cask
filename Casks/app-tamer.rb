cask "app-tamer" do
  version "2.5.2"
  sha256 "b184e87e6465502485760a1fe5a535d8d9534fe7731e3f6d777b9983ebf1e861"

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
