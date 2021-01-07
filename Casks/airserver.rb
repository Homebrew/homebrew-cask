cask "airserver" do
  version "7.2.6"
  sha256 "fc7c7562654ffd47c46e4ffe0a8fc1565d0fa76297ad2e6105cab3c8ab125568"

  url "https://dl.airserver.com/mac/AirServer-#{version}.dmg"
  name "AirServer"
  desc "Screen mirroring receiver"
  homepage "https://www.airserver.com/"

  livecheck do
    url "https://www.airserver.com/downloads/mac/appcast.xml"
    strategy :sparkle
  end

  app "AirServer.app"
end
