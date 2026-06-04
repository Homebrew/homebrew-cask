cask "airserver" do
  version "7.3.2"
  sha256 "fe614835ff275c91434d037f4bbde7309ea93e6eac7bb88c728da97a0841bb97"

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
