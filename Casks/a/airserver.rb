cask "airserver" do
  version "7.3.1"
  sha256 "6be8943149754ff51879f03cd766f84f7079a1495442cca45f1e4871aca0fbc5"

  url "https://dl.airserver.com/mac/AirServer-#{version}.dmg"
  name "AirServer"
  desc "Screen mirroring receiver"
  homepage "https://www.airserver.com/"

  livecheck do
    url "https://www.airserver.com/downloads/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "AirServer.app"

  zap trash: [
    "~/Library/Caches/com.pratikkumar.airserver-mac",
    "~/Library/Preferences/com.pratikkumar.airserver-mac.AirServer.plist",
    "~/Library/Preferences/com.pratikkumar.airserver-mac.plist",
  ]
end
