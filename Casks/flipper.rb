cask "flipper" do
  version "0.80.0"
  sha256 "16a81c4348142cf9ab9db03a392cd6da79199cb53dee312563d7ff6667708bc6"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
