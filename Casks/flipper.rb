cask "flipper" do
  version "0.81.0"
  sha256 "b7de0c9b7b7ddbd7b6c7d00ec200a7eb7afcc7a9c5686f7540b3cd5d12ed7fc0"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
