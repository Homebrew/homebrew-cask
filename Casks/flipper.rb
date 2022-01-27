cask "flipper" do
  version "0.130.0"
  sha256 "e359457b07ccdb08eab6868aeb89216e79f146b1addce6b079366a8e932e5268"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
