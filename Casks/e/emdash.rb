cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.35"
  sha256 arm:   "fa0bbf7e25915c2702202094aa4dcc6f015ccc4d56e7c16ad76fad90274d77cb",
         intel: "2aeca38d66681d4c88fd4e70aa654945ef1766557e271b1092c31baca0fb272e"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
