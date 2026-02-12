cask "dymo-connect" do
  arch arm: "Arm64", intel: "X64"

  version "1.6.0.41"
  # At present, the checksum are the same across architectures, but this may change in future.
  sha256 "a42f4da175b26b4017384ac41ed978470078aee84b1f43bb591b3c9855d2c919"

  url "https://dymoreleasecontent.blob.core.windows.net/dymo-release/DCDMAC/DCDMac#{version}-#{arch}.pkg",
      verified: "dymoreleasecontent.blob.core.windows.net/dymo-release/"
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
