cask "flipper" do
  version "0.111.0"
  sha256 "8451ca0cf2b1f16a1ecc4a6154a34ec83afa5dd22a857072234b20e92a53da56"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
