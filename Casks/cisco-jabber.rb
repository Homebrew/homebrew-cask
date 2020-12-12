cask "cisco-jabber" do
  version "20200710062404"
  sha256 "41c70fc9dc30ad04ccfb1c06c2ee1416bb09fccfb0f38b7c37166b78cde195e7"

  url "https://binaries.webex.com/jabberclientmac/#{version}/Install_Cisco-Jabber-Mac.pkg"
  appcast "https://www.webex.com/downloads/jabber.html"
  name "Cisco Jabber"
  desc "Jabber client from Cisco"
  homepage "https://www.webex.com/downloads/jabber.html"

  pkg "Install_Cisco-Jabber-Mac.pkg"

  uninstall pkgutil: [
    "com.cisco.Jabber",
    "com.cisco.pkg.jabberplugin",
    "com.jabra.CiscoJabberPlugin",
    "com.logitech.LogiUCPlugin",
    "com.PlantronicsPlugin.CiscoJabberPlugin",
    "com.Sennheiser.pkg.SennheiserSDKv789904MacSDKv8602",
  ],
            delete:  [
              "/Applications/Cisco Jabber.app",
              "/Library/Logs/Jabber/",
              "/Library/Application Support/Cisco/Unified Communications/Jabber/",
            ]
end
