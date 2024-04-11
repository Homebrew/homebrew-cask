cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.252.0"
  sha256 arm:   "a0bb550130985a609dc4501fd5bf5fd7f22b1c1e15ed6f1f148c4094719db0fd",
         intel: "9b4e5e000f82724cd9438ef95980bc82f9db746ddf2bf1c51c9d16fba7ca7bb4"

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
