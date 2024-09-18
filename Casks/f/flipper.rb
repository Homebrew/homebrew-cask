cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.267.1"
  sha256 arm:   "f4b60c5b92575f9145a3acc81d536d2737ad90a2b70673b972fc7fc87864ea1d",
         intel: "3f1e3a0e94c1ac7c0ae78ec95e11e1bff5c8e53076a756ff5835d1f876e76e3c"

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
