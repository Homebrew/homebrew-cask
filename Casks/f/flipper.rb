cask "flipper" do
  arch arm: "aarch64", intel: "x64"

  version "0.253.0"
  sha256 arm:   "b3ea0b6ca9a019bc72c3d355a85a3d684c8730f0da271551878cd94b168ebe04",
         intel: "7728ebe553103145faa857a52688f1c8f3ea287b205097f0ac81ac933216e135"

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
