cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.257.0"
  sha256 arm:   "02ce80558c6c456b618702addb04b93840772e9782e3463817f584fd30fcbecd",
         intel: "d53e6bf7549891125eb94db5c41ee88385106a2407ea0f1e6760cda58606d2d3"

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
