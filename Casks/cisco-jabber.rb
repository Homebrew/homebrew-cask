cask "cisco-jabber" do
  version "20210603033139"
  sha256 "0cffdc267493aa8b99f28481a0476d036cb3d0bd897b911f8f478bc87b40b981"

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
