cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.270.0"
  sha256 arm:   "e7e21b1078bf4f4447b79277435bcbd30ffbb39416a6ce106113a3f47713933f",
         intel: "62a7a78799347fc2efb3c0a1d371a5685627feaf5098c62a4303494015258d03"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-server-mac-#{arch}.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  livecheck do
    url "https://www.facebook.com/fbflipper/public/latest.json?version=0.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  app "Flipper.app"

  zap trash: [
    "~/.flipper",
    "~/Library/Application Support/Flipper",
    "~/Library/Preferences/rs.flipper-launcher",
  ]
end
