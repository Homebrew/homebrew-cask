cask "ssl-360" do
  version "2.1.12.72214"
  sha256 "f107d1d8f45df087ff0e0ae73f50e4bc0df5e694abf8ab65b017da6936368201"

  url "https://s3.dualstack.eu-west-2.amazonaws.com/zendesk.download.solidstatelogic.com/SSL%20360/SSL_360_v#{version}.dmg"
  name "SSL 360"
  desc "Plugin mixer and control software for SSL 360-enabled hardware"
  homepage "https://www.solidstatelogic.com/products/ssl-360"

  livecheck do
    url "https://support.solidstatelogic.com/api/v2/help_center/en-gb/articles/4408123894417.json"
    regex(/SSL_360[._-]v(\d+(?:\.\d+)+\.\d+)\.dmg/i)
  end

  depends_on :macos

  pkg "SSL_360_v#{version}.pkg"

  uninstall launchctl: "com.sslcontrolroom.daemon",
            signal:    [
              ["SIGINT", "SSL360Core"],
              ["TERM", "SSL360Gui"],
            ],
            pkgutil:   "com.sslcontrolroominstaller.pkg",
            delete:    [
              "/Applications/SSL 360.app",
              "/Applications/SSL/SSL 360 Uninstaller.app",
              "/Library/Audio/MIDI Device Profiles/Solid State Logic/SSL 360.device",
            ]

  zap trash: [
    "~/Library/Application Support/SSL 360",
    "~/Library/Preferences/com.solidstatelogic.ssl360.plist",
    "~/Library/Saved Application State/com.solidstatelogic.ssl360.savedState",
  ]
end
