cask "blink1control" do
  version "2.2.4"
  sha256 "ad050f81cf0970eadc569e8a32f9009a9442d1ef4a11941b09848fb2f22d6048"

  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac.dmg",
      verified: "github.com/todbot/Blink1Control2/"
  name "Blink1Control"
  desc "Utility to control blink(1) USB RGB LED devices"
  homepage "https://blink1.thingm.com/"

  app "Blink1Control#{version.major}.app"
end
