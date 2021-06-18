cask "cisco-jabber" do
  version "20210329103527"
  sha256 "0eb4324310ba8f55d12d7cc5b6a89ec1ab071ab774d31b0aa833f7d89fed5206"

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
