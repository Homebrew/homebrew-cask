cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.251.0"
  sha256 arm:   "bf4e860681127b9c3eb79394410df3ceef38f46416adba858cf6da75088bffc8",
         intel: "504127d5ac1a548913bd6210cb16d53c564cb08ca09a0b6ca6e5f07f186ecc0f"

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
