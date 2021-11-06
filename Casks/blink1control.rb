cask "blink1control" do
  version "2.2.5"
  sha256 "2d0a2f71c2d5ebe74cb0c07ea5941b31211d9187c4025eb129130047d85a8969"

  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac-x64.dmg",
      verified: "github.com/todbot/Blink1Control2/"
  name "Blink1Control"
  desc "Utility to control blink(1) USB RGB LED devices"
  homepage "https://blink1.thingm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blink1Control#{version.major}.app"
end
