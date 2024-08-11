cask "garmin-express" do
  on_catalina :or_older do
    version "7.18.0"
    sha256 "f032349fa2b4cd5abe20ae9201c905874a4d3ef1b328966a29d24e6e15793729"

    url "https://download.garmin.com/omt/express/GarminExpress_#{version}_OS10x.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "7.22.1"
    sha256 :no_check

    url "https://download.garmin.com/omt/express/GarminExpress.dmg"

    # From https://support.garmin.com/en-US/?productID=168768&tab=software
    livecheck do
      url "https://support.garmin.com/capi/faq/details/?locale=en-US&faqId=9MuiEv9c2y2wgcXvzEVEe8"
      regex(/for\s+Mac:?[\s\u00a0]*?v?(\d+(?:\.\d+)+)/i)
      strategy :json do |json, regex|
        match = json["content"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  name "Garmin Express"
  desc "Update maps and software, sync with Garmin Connect and register your device"
  homepage "https://www.garmin.com/en-US/software/express"

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
