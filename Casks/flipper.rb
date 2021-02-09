cask "flipper" do
  version "0.74.0"
  sha256 "9e914943aa8191c6c05ceebf749f050e000c1e679df1e2a81d9953d17c3b236f"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
