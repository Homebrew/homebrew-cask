cask "flipper" do
  version "0.131.1"
  sha256 "8c3a53d3d2ac7f7c3dca3d398203a3cbb91476ac3a6283ff1c05a3d2f38664ca"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
