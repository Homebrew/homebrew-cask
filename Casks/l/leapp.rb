cask "leapp" do
  arch arm: "-arm64"

  version "0.20.2"
  sha256 arm:   "0b8f6d421e58e770eb6a5e856d0fb35b7b7e11f664d5536627e8b6a9fc2aeb78",
         intel: "1c20ce22b71e90d72da8d02cdc81bb28f22795c869d22fb797669a0a58443e80"

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
