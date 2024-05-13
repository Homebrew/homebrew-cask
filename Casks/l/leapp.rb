cask "leapp" do
  arch arm: "-arm64"

  version "0.26.0"
  sha256 arm:   "78b65e27a020f474a215cb7b8831a2d694ca12d24c894c8f606e29b3d44aa731",
         intel: "53bfa35da7bc3f1a3f8d4ddeac18a57b67c45e7f0c954f4a4d3286de1d998b2c"

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
