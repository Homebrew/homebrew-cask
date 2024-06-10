cask "netspot" do
  version "3.2.4081"
  sha256 :no_check

  url "https://cdn.netspotapp.com/download/NetSpot.dmg"
  name "NetSpot"
  desc "WiFi site survey software and WiFi scanner"
  homepage "https://www.netspotapp.com/"

  livecheck do
    url "https://cdn.netspotapp.com/download/Mac/netspot#{version.major}-appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "NetSpot.app"

  zap trash: [
    "~/Library/Application Support/NetSpot",
    "~/Library/Caches/com.etwok.netspotwifi",
    "~/Library/Preferences/com.etwok.netspotwifi.plist",
  ]
end
