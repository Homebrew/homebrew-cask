cask "leapp" do
  arch arm: "-arm64"

  version "0.22.1"
  sha256 arm:   "7df717b5f8b9c635a6efdc98d3a2e1702b0f49ca20b3deeb78458f0bf9734763",
         intel: "9b682258d314618d9d65d9f67c3d5a0f97690deba5c87237fb3ae5d34524be0b"

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
