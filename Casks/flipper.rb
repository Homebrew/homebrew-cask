cask "flipper" do
  version "0.79.1"
  sha256 "ac9b35230c0fe1f7f86d722280453c8d4d5b6518ac2f31a1f8a4fb1cd3372b11"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
