cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.260.0"
  sha256 arm:   "b3b6cbbb1f6f51276a5f94f66d7728315425695c2343be3fe56ffe62700c8d3a",
         intel: "b4f6412b8a268635fbbd99d5cc48a55a322cb3ff74b0cdfa1d2b77e8cc360d31"

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
