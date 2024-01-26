cask "leapp" do
  arch arm: "-arm64"

  version "0.24.4"
  sha256 arm:   "868bd7a168b613289f0ff9aab5afd253a4be6409e5671a7da621788dde3f3e4d",
         intel: "1f547c90b6863a7fe9e0d8e3462196aa7b0e2e0ce532f83585b0df7c47c24b38"

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
