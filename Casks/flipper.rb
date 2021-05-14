cask "flipper" do
  version "0.88.0"
  sha256 "706afea4cf8a18ca6e7cacdb344ce38de2cc9804245970ef3a43f72e9501e1d1"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
