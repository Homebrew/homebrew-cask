cask "flipper" do
  version "0.68.0"
  sha256 "6f59b93b8a258f10309fdd1272752eae2929f064555d88206f284f0ee8c8fcc6"

  # github.com/facebook/flipper/ was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
