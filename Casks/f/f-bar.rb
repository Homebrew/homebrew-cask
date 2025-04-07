cask "f-bar" do
  on_el_capitan :or_older do
    version "3.1.1"
    sha256 "dd2cbcc8bfb9244cf952d29354f6cd7f442472ca4ed8a11063c006c9f83b07af"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra :or_newer do
    version "5.1"
    sha256 "82d6a186209c2b70317b444eea278b570843b09db2373ebefa1c025a73a937e6"

    livecheck do
      url "https://apps.eastwest.se/fbar/updates/FBarAppcast.xml"
      strategy :sparkle, &:short_version
    end
  end

  url "https://apps.eastwest.se/fbar/updates/F-Bar_#{version}.zip",
      verified: "apps.eastwest.se/fbar/"
  name "F-Bar"
  desc "Manage Laravel Forge servers from the menubar"
  homepage "https://laravel-forge-menubar.com/"

  auto_updates true

  app "F-Bar.app"

  zap trash: [
    "~/Library/Application Support/F-Bar",
    "~/Library/Application Support/se.eastwest.F-Bar",
    "~/Library/Caches/se.eastwest.F-Bar",
    "~/Library/Preferences/se.eastwest.F-Bar.plist",
  ]
end
