cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.9"
  sha256 arm:   "c2877750d2ab655cc524cac18b6f808abeddbdafe665a42ec3d73355212ed1b7",
         intel: "c4cb3d12cf5d6d6fb94ff5b8e9e8f40f5eac16087bedb4c2b9c165ce0edaa562"

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
