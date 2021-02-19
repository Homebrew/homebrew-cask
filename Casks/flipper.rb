cask "flipper" do
  version "0.76.0"
  sha256 "c6eec8c6dbd25c3c6e5d92edc409baa4b798dfa55fdf4fd3fb55de8bfbe41dfe"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
