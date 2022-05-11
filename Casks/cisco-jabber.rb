cask "cisco-jabber" do
  version "20220428041018"
  sha256 "b1849d28abd3bcb00c0ed4c173bc079358944b4c96059411ad240a0c71e159cb"

  url "https://binaries.webex.com/jabberclientmac/#{version}/Install_Cisco-Jabber-Mac.pkg"
  name "Cisco Jabber"
  desc "Jabber client from Cisco"
  homepage "https://www.webex.com/downloads/jabber.html"

  livecheck do
    url :homepage
    regex(%r{jabberAppUrl =.*?(\d+)/Install[._-]Cisco[._-]Jabber[._-]Mac.pkg}i)
  end

  pkg "Install_Cisco-Jabber-Mac.pkg"

  uninstall pkgutil: [
    "com.cisco.Jabber",
    "com.cisco.pkg.jabberplugin",
    "com.jabra.CiscoJabberPlugin",
    "com.logitech.LogiUCPlugin",
    "com.PlantronicsPlugin.CiscoJabberPlugin",
    "com.Sennheiser.pkg.SennheiserSDKv789904MacSDKv8602",
    "com.sennheiser.CiscoJabberPlugin",
  ],
            delete:  [
              "/Applications/Cisco Jabber.app",
              "/Library/Logs/Jabber/",
              "/Library/Application Support/Cisco/Unified Communications/Jabber/",
            ]
end
