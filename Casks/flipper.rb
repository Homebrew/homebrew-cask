cask "flipper" do
  version "0.78.0"
  sha256 "8a1e9a4d38409e0d22c192d61fec3a4d1efa56af5af98706826a8c9be5cdbe6f"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
