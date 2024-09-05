cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.265.0"
  sha256 arm:   "458f5a0b4d91aa7ba9886671724fd1158ff4797feb8d3179e201a886e31d8358",
         intel: "f2347eeb1ab26aa554629336269e402ba0496f0c8b328f7775fd769e9ff6c9b2"

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
