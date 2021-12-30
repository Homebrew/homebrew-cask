cask "cisco-jabber" do
  version "20210902045804"
  sha256 "b476c9ebc247c60d9634a64e7800d132eca943c1d813bb8deea9556340b5800f"

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
  ],
            delete:  [
              "/Applications/Cisco Jabber.app",
              "/Library/Logs/Jabber/",
              "/Library/Application Support/Cisco/Unified Communications/Jabber/",
            ]
end
