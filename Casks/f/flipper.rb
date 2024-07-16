cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.258.0"
  sha256 arm:   "85d061d675a37049a9e30683c31890a8bf9cfe133bce80390c1aada0c0fa4793",
         intel: "efb8c3fe618bb5dd4c539faf5927e0d9b125c455bea37d4f984b79dca382692c"

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
