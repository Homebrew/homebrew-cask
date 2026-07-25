cask "dymo-connect" do
  arch arm: "Arm64", intel: "X64"

  version "1.6.1.4"
  # At present, the checksum are the same across architectures, but this may change in future.
  sha256 "5b3b201c99235aadc6178f0dd0dae30d6edb64e7cef6e1de5faa875c5fb5967b"

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
  depends_on :macos

  pkg "DCDMac#{version}-#{arch}.pkg"

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
