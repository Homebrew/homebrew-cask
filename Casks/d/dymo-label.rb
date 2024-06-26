cask "dymo-label" do
  version "1.4.6.60"
  sha256 "0c6f5a8fe77601334f75dc9786baa5edfd2656dadde6ea0f28f38c8ff4bbe657"

  url "https://download.dymo.com/dymo/Software/Mac/DCDMac#{version}.pkg"
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
            quit:      "com.dymo.DYMO-WebApi-Mac-Host",
            pkgutil:   "com.dymo.dymo-connect"

  zap trash: "~/Library/Preferences/com.dymo.DYMO-WebApi-Mac-Host.plist"
end
