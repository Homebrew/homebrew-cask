cask "app-tamer" do
  version "2.8.1"
  sha256 "d263cec63f9301807dd678166c2fc10f333d12b02dd52b710caa6e69e3b26bc0"

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
