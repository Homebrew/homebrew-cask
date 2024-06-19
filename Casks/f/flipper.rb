cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.256.0"
  sha256 arm:   "92b249936e615ed1968d10b67ddce71a564a5847be9b2c715e53f1bb620b0a9c",
         intel: "0d6447fbf78b84b5aa54a4a388ac0d85ad3f160d8a2a43101b5cd701a72fea81"

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
