cask "dymo-connect" do
  version "1.4.9.12"
  sha256 "b2e2714fbe31faea5a046d8acd9770ad46b355168413984d6b4cad54e1573ac6"

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
