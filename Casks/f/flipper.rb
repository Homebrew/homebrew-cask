cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.271.0"
  sha256 arm:   "dd297c9531e24ed82363928aa588620a98b719a719089be2b6f253fcf58b57ad",
         intel: "5bb5e0685318cf2d4d14594a301e70a6511e58e21d0b0cde1e2bcba723adb85d"

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
