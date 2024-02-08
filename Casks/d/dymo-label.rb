cask "dymo-label" do
  version "1.4.4.18"
  sha256 "5bba1476e5d0a2301a2d1a13822dada6c31f2f624c5cb5484e19bb1b95719720"

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
