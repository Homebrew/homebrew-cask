cask "f-bar" do
  on_el_capitan :or_older do
    version "3.1.1"
    sha256 "dd2cbcc8bfb9244cf952d29354f6cd7f442472ca4ed8a11063c006c9f83b07af"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra :or_newer do
    version "5.0.5"
    sha256 "2fb891afa0086310fa180d3b40585e1c9763b392f06ad5237995ea7d02aaf8af"

    livecheck do
      url "https://eastwest.se/apps/fbar/download"
      strategy :header_match
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
