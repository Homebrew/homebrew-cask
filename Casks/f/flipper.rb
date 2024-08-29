cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.264.0"
  sha256 arm:   "3ea56635cbde7700fbf594cd32866f5165dfd1dba0c0e7fad075422120fcb493",
         intel: "8813031f4ef39fbb7bae3f38a3d08de8f56fda39497c8d6e2480117df432ff8b"

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
