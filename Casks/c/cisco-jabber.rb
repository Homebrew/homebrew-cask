cask "cisco-jabber" do
  version "20231103015600"
  sha256 "6dc14d6795c078f4ce6f517f5ee161458a3479eee103c4c88e8ea1f49b0597ff"

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
