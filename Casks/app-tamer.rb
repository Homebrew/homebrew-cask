cask "app-tamer" do
  version "2.6.2,10554"
  sha256 "6ef12fe8278a822fd01629144dc8b58267d771b841aa198d905ef77a661a1843"

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
