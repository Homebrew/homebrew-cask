cask "flipper" do
  version "0.112.0"
  sha256 "19be9bf7736a2481b17a14218397b5c19cbf666668580b0e36027de810d1cd24"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
