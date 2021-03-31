cask "flipper" do
  version "0.83.0"
  sha256 "c6a52a95c9524c1b2764324f5da2158657cbbc5f27b16a337a05552a9bfa9866"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
