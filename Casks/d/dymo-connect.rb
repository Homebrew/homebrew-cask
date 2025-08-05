cask "dymo-connect" do
  version "1.5.0.17"
  sha256 "f31019ccc443872429d20ea3a06a117b92c1660065affc354107160fad89a3b0"

  url "https://download.dymo.com/dymo/Software/Mac/DCDMac#{version}.pkg"
  name "Dymo Connect"
  desc "Software for DYMO LabelWriters"
  homepage "https://www.dymo.com/support?cfid=online-support"

  livecheck do
    url "https://download.dymo.com/Software/dymoconnect/updates/Mac/Updates.xml"
    strategy :xml do |xml|
      xml.elements["//DYMOConnect/Version"]&.text&.strip
    end
  end

  auto_updates true

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
