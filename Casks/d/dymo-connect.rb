cask "dymo-connect" do
  version "1.4.8.2"
  sha256 "a8bcc3eb6abfe4ec1fcdb674c1e026a0938e7569dda25bf146b4aa16f8ed6e3d"

  url "https://download.dymo.com/dymo/Software/Mac/DCDMac#{version}.pkg"
  name "Dymo Connect"
  desc "Software for DYMO LabelWriters"
  homepage "https://www.dymo.com/support?cfid=online-support"

  # This can return a page with a CAPTCHA instead of the expected content
  # (e.g. when the check is run in the homebrew/cask CI environment).
  livecheck do
    url :homepage
    regex(/href=.*?DCDMacv?(\d+(?:\.\d+)+)\.pkg/i)
  end

  pkg "DCDMac#{version}.pkg"

  uninstall launchctl: [
              "com.dymo.dcd.webservice",
              "com.dymo.pnpd",
            ],
            quit:      "com.dymo.DYMO-WebApi-Mac-Host",
            pkgutil:   [
              "com.dymo.dymo-connect",
              "com.dymo.webapi.host",
            ]

  zap trash: "~/Library/Preferences/com.dymo.DYMO-WebApi-Mac-Host.plist"
end
