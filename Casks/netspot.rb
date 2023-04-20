cask "netspot" do
  version "2.15.1054"
  sha256 :no_check

  url "https://cdn.netspotapp.com/download/NetSpot.dmg"
  name "NetSpot"
  desc "WiFi site survey software and WiFi scanner"
  homepage "https://www.netspotapp.com/"

  livecheck do
    url "https://www.netspotapp.com/updates/netspot#{version.major}-appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "NetSpot.app"

  zap trash: [
    "~/Library/Application Support/NetSpot",
    "~/Library/Caches/com.etwok.netspotwifi",
    "~/Library/Preferences/com.etwok.netspotwifi.plist",
  ]
end
