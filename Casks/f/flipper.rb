cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.254.0"
  sha256 arm:   "69ed10a20485d33ea4609b53f5a8bb6f48e7646804e753b2b725e0c64099d25e",
         intel: "45b986ebabb00c2748aab9572343525e05362671c48bde6a9fc3cbccf6b6b7bf"

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
