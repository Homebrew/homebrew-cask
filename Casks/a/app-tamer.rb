cask "app-tamer" do
  version "2.8.3"
  sha256 "a2eb682ee35307e6d8dce48db2d3d5170513c9b52445f31b2e8c9822168b10d0"

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  name "AppTamer"
  desc "CPU management application"
  homepage "https://www.stclairsoft.com/AppTamer/"

  livecheck do
    url "https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "App Tamer.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.stclairsoft.AppTamerAgent.plist",
    "/Library/PrivilegedHelperTools/com.stclairsoft.AppTamerAgent",
  ]

  zap trash: [
    "~/Library/Application Support/.com.stclairsoft.data",
    "~/Library/Caches/com.stclairsoft.AppTamer",
    "~/Library/HTTPStorages/com.stclairsoft.AppTamer",
    "~/Library/Preferences/com.stclairsoft.AppTamer.plist",
  ]
end
