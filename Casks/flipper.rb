cask "flipper" do
  version "0.79.0"
  sha256 "7f4ce375a5b5b82eb817e23079f1e193407b775feed140cdfeab84acd17ab111"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  appcast "https://github.com/facebook/flipper/releases.atom"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
