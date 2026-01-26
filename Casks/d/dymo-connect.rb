cask "dymo-connect" do
  version "1.5.1.15"
  sha256 "04090b1a1cc357791a29463e2b15331bfaff69dd64fe62f6afa5294b7f2a3a6b"

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
