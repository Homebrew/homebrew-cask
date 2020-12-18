cask "netspot" do
  version "2.13.1008"
  sha256 :no_check

  url "https://cdn.netspotapp.com/download/NetSpot.dmg"
  appcast "https://www.netspotapp.com/updates/netspot#{version.major}-appcast.xml"
  name "NetSpot"
  desc "WiFi site survey software and WiFi scanner"
  homepage "https://www.netspotapp.com/"

  auto_updates true

  app "NetSpot.app"

  zap trash: [
    "~/Library/Application Support/NetSpot",
    "~/Library/Caches/com.etwok.netspotwifi",
    "~/Library/Preferences/com.etwok.netspotwifi.plist",
  ]
end
