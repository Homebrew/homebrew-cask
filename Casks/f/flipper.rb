cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.268.0"
  sha256 arm:   "4c6c0a58ff712b9a76e8ffe7a913a7765454eb3c8d0d5d6d1394516c94b24821",
         intel: "dc7e2ff810fa3c943e206c9d1cf6e297412c43b1aa46f045b36bd683797639eb"

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
