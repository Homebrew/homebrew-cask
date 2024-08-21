cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.263.0"
  sha256 arm:   "9372d7941b52f1438e2cdebd0bfff3d5c2d3caa39276c691df0a1953bf74afb6",
         intel: "94fcf10059dac9f3d19b00cd92b3f775f9864f9682f51ff4c68ca8e475560fa4"

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
