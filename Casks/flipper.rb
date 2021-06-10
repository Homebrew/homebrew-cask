cask "flipper" do
  version "0.93.0"
  sha256 "eeb6cf86569fc63f73054a11df2c3a39721811b6462b58753c3400937795e4ea"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
