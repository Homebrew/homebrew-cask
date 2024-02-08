cask "app-tamer" do
  version "2.8.2"
  sha256 "f289ddc261a7b29c9d3c3116dd459b94d44fa10501f5bac02d2fb503976ee995"

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
