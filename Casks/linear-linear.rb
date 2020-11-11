cask "linear-linear" do
  version "1.2.15"
  sha256 "437910bced988d023f5ab9e45adefb5c38212b4a88d5f456c864a904686e61ef"

  url "https://download.linear.app/darwin/Linear-darwin-x64-#{version}.zip"
  appcast "https://api.linear.app/update/darwin/0.0.0"
  name "Linear"
  desc "App to manage software development and track bugs"
  homepage "https://linear.app/"

  app "Linear.app"

  zap trash: [
    "~/Library/Application Support/Linear",
    "~/Library/Caches/com.linear",
    "~/Library/Caches/com.linear.ShipIt",
    "~/Library/Preferences/com.linear.plist",
    "~/Library/Saved Application State/com.linear.savedState",
  ]
end
