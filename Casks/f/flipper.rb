cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.255.0"
  sha256 arm:   "0f0fe5508644e90340e3fd547c0a21c639456e836b512e7b99b5070c762e2251",
         intel: "cba7262b056d4208cc7dae17029ef183abffc9a5667bcb2764ea5006181de72f"

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
