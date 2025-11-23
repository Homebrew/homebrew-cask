cask "airserver" do
  version "7.2.7"
  sha256 "e092aa4803418483dac749f71c644d63972b4ffe61f235364b92a5b72e08ae0d"

  url "https://dl.airserver.com/mac/AirServer-#{version}.dmg"
  name "AirServer"
  desc "Screen mirroring receiver"
  homepage "https://www.airserver.com/"

  livecheck do
    url "https://www.airserver.com/downloads/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "AirServer.app"

  zap trash: [
    "~/Library/Caches/com.pratikkumar.airserver-mac",
    "~/Library/Preferences/com.pratikkumar.airserver-mac.AirServer.plist",
    "~/Library/Preferences/com.pratikkumar.airserver-mac.plist",
  ]

  caveats do
    requires_rosetta
  end
end
