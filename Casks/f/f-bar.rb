cask "f-bar" do
  version "5.1"
  sha256 "82d6a186209c2b70317b444eea278b570843b09db2373ebefa1c025a73a937e6"

  url "https://apps.eastwest.se/fbar/updates/F-Bar_#{version}.zip",
      verified: "apps.eastwest.se/fbar/"
  name "F-Bar"
  desc "Manage Laravel Forge servers from the menubar"
  homepage "https://laravel-forge-menubar.com/"

  livecheck do
    url "https://apps.eastwest.se/fbar/updates/FBarAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "F-Bar.app"

  zap trash: [
    "~/Library/Application Support/F-Bar",
    "~/Library/Application Support/se.eastwest.F-Bar",
    "~/Library/Caches/se.eastwest.F-Bar",
    "~/Library/Preferences/se.eastwest.F-Bar.plist",
  ]
end
