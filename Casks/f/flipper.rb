cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.250.0"
  sha256 arm:   "9e84f0ccb28a8ded1de8613b9cebca07bc1748cac1dca999437a9d2a4084cb82",
         intel: "b57e8fa50e0490c885eb245cae09a2065897d5c0f6139fb8ccfbba071e70f9b2"

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
