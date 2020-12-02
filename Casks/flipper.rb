cask "flipper" do
  version "0.67.0"
  sha256 "78395f1886fb0e56d13efdbfa9a4ab097bf02b77b61596216d0bfbbe5781e2da"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
