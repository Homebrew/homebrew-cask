cask "app-tamer" do
  version "2.8.2"
  sha256 "92dfaf11623e3b1b86c132752e2932ccc940cc87e38d92434f7d04344413e01e"

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  name "AppTamer"
  desc "CPU management application"
  homepage "https://www.stclairsoft.com/AppTamer/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

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
