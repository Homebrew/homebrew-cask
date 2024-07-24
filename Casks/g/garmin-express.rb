cask "garmin-express" do
  version "7.22.1.0,7220100"
  sha256 :no_check

  url "https://download.garmin.com/omt/express/GarminExpress.dmg"
  name "Garmin Express"
  desc "Update maps and software, sync with Garmin Connect and register your device"
  homepage "https://www.garmin.com/en-US/software/express"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  pkg "Install Garmin Express.pkg"

  uninstall quit:    [
              "com.garmin.renu.client",
              "com.garmin.renu.service",
            ],
            pkgutil: "com.garmin.renu.client"

  zap trash: [
    "~/Library/Application Support/Garmin/Express",
    "~/Library/Caches/com.garmin.renu.client",
    "~/Library/Caches/com.garmin.renu.service",
    "~/Library/Caches/com.garmin.renu.service.crashreporter",
    "~/Library/Preferences/com.garmin.renu*",
  ]

  caveats do
    requires_rosetta
  end
end
