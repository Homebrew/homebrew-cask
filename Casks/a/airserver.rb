cask "airserver" do
  version "7.3.3"
  sha256 "e8a6ecd95e5ce8fa1ec92e6107c737e7c3c3ef5eaff6f32cadf1ffa7515faeb0"

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
