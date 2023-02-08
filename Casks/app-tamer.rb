cask "app-tamer" do
  version "2.7.6,11863"
  sha256 "3d55fb809a7b098e1904c7ecb968c842df8478dfc31a13959ac81fd2d6cc89c3"

  url "https://www.stclairsoft.com/download/AppTamer-#{version.csv.first}.dmg"
  name "AppTamer"
  desc "CPU management applicataion"
  homepage "https://www.stclairsoft.com/AppTamer/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT"
    strategy :sparkle
  end

  app "App Tamer.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.stclairsoft.AppTamerAgent.plist",
    "/Library/PrivilegedHelperTools/com.stclairsoft.AppTamerAgent",
  ]

  zap trash: [
    "~/Library/Caches/com.stclairsoft.AppTamer",
    "~/Library/Preferences/com.stclairsoft.AppTamer.plist",
  ]
end
