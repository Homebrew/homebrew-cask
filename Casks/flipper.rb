cask "flipper" do
  version "0.73.0"
  sha256 "2b4ee1a3ecafa01f0bb53554174b883181b1ee71dfc8edde670876cee2cb35ae"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
