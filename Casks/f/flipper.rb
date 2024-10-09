cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.269.0"
  sha256 arm:   "dbd5078852b6e4fce58751d73b368458eb36e19c21fa6c522fcdbdb78f779630",
         intel: "b14acdd30d204840b02219f5f1a282d0e438b9c65dcb52f859f3e6f509380722"

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
