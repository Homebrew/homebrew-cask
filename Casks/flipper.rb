cask "flipper" do
  version "0.82.2"
  sha256 "e8a6ba29d3e0d60d713e9a62a96e17203220c60f06dcc4e816f470b98ce21151"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
