cask "flipper" do
  version "0.123.0"
  sha256 "f450830ddf4c2394758dde492ba07d43bcf1e32e836a0bee694f0e56edf80951"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
