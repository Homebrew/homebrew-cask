cask "dymo-label" do
  version "1.4.3.103"
  sha256 "b490b687ed24af5a198ce215d68e041b6efc5d5e2f83ced6f5e5b788b52142f1"

  url "https://s3.amazonaws.com/download.dymo.com/dymo/Software/Mac/DCDMac#{version}.pkg",
      verified: "s3.amazonaws.com/download.dymo.com/dymo/Software/Mac/"
  name "Dymo Label"
  desc "Software for DYMO LabelWriters"
  homepage "https://www.dymo.com/support?cfid=online-support"

  livecheck do
    skip "No version information available"
  end

  pkg "DCDMac#{version}.pkg"

  uninstall launchctl: [
              "com.dymo.dcd.webservice",
              "com.dymo.pnpd",
            ],
            pkgutil:   "com.dymo.dymo-connect",
            quit:      "com.dymo.DYMO-WebApi-Mac-Host"

  zap trash: "~/Library/Preferences/com.dymo.DYMO-WebApi-Mac-Host.plist"
end
