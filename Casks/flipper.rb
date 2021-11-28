cask "flipper" do
  version "0.122.0"
  sha256 "1c5216a503f14dd515d6da5bd19ac23764e9171e98aa871a7744e7f8cd025456"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
