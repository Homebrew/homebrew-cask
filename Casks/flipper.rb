cask "flipper" do
  version "0.71.0"
  sha256 "556df0a30972ee0fe402e213af6fb35e9bb6652ac21321e5d2b9bbaa8ad31be1"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
