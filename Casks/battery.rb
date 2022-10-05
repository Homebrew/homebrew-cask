cask "battery" do
  version "1.0.3"
  sha256 "71e699bcf634f481a0b1c54a2035a04e9e9fec4463c9dbfe95d0370a89aaaabc"

  url "https://github.com/actuallymentor/battery/releases/download/v#{version}/battery-#{version}-arm64.dmg"
  name "battery"
  desc "GUI & CLI for managing the battery charging status for M1 Macs"
  homepage "https://github.com/actuallymentor/battery/"

  app "Battery.app"
  license "MIT"
end
