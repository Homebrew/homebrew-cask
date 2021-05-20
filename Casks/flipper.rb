cask "flipper" do
  version "0.91.1"
  sha256 "2b0ce653e8c67f1d2df74699a568999b6fbf257ffe7c532eb710da27a4e3ce5d"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
