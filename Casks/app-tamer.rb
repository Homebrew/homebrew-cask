cask "app-tamer" do
  version "2.6.4,10674"
  sha256 "ee84b3dbc0474777c7e886fc86c95f4e392dec4fcdbb5a141ff2fb0f1e28ec48"

  url "https://www.stclairsoft.com/download/AppTamer-#{version.csv.first}.dmg"
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
