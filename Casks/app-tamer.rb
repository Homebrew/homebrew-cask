cask "app-tamer" do
  version "2.7.1,11373"
  sha256 "7873dbd12182a99c04d0c6754a939732fd8085a00d0c1ad3eadc95f54eb0a077"

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
