cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.272.0"
  sha256 arm:   "b9b28e0205b9996ca06c1d6dd8b23ef89b6d10c8b1f7b7c2cfdf179f1ed4ea20",
         intel: "71d9846252f496dcfafb972902e8ef970bf7fe4413c08093e3f44b80c337e107"

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
