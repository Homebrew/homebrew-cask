cask "garmin-express" do
  version "7.29.3.0"
  sha256 :no_check

  url "https://download.garmin.com/omt/express/GarminExpress.dmg"
  name "Garmin Express"
  desc "Update maps and software, sync with Garmin Connect and register your device"
  homepage "https://www.garmin.com/en-US/software/express"

  livecheck do
    url "https://omt.garmin.com/Rce/ProtobufApi/ApplicationService/GetApplicationUpdate",
        header:    "Accept: application/json",
        post_json: {
          ApplicationName: "express-mac",
          ClientInfo:      { OperatingSystemType: "mac" },
          CurrentVersion:  version.major_minor_patch.to_s,
        }
    strategy :json do |json|
      json["VersionNumber"]
    end
  end

  auto_updates true
  depends_on :macos

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
end
