cask "flipper" do
  version "0.113.0"
  sha256 "d84dda6df076d3e03403af3d72449f34abacb574e500ede1ddb2b70729fddf5b"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
