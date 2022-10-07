cask "leapp" do
  arch arm: "-arm64"

  version "0.15.1"
  sha256 arm:   "6e5b354b50887dc19483ee5f3bf3304ea309e69f4b9eeb3193c9503e120db887",
         intel: "06f4c15beed3e91cf4386b3c127b31f5b419cf021e2b4a350663e8fe9dcd17f3"

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
