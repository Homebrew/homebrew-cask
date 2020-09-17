cask "netspot" do
  version "2.12.999"
  sha256 "0016438800c7688786b9e53e88156fda425d0e3f5d620d7dee3817fc69b18223"

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
