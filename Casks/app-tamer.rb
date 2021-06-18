cask "app-tamer" do
  version "2.6.3,10626"
  sha256 "220d1b15b3372d03ab14407fb289437694a0b344f6882c1afcd6e42e59eb0f12"

  url "https://www.stclairsoft.com/download/AppTamer-#{version.before_comma}.dmg"
  name "AppTamer"
  desc "CPU management applicataion"
  homepage "https://www.stclairsoft.com/AppTamer/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT"
    strategy :sparkle
  end

  app "App Tamer.app"

  zap trash: [
    "/Library/LaunchDaemons/com.stclairsoft.AppTamerAgent.plist",
    "/Library/PrivilegedHelperTools/com.stclairsoft.AppTamerAgent",
    "~/Library/Caches/com.stclairsoft.AppTamer",
    "~/Library/Preferences/com.stclairsoft.AppTamer.plist",
  ]
end
