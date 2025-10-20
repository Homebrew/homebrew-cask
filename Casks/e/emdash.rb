cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.12"
  sha256 arm:   "4125da7e6d9ddd5b3e922cec4a63eb48e64d65d7eaa0cd100e52372433cbf740",
         intel: "d69d17dcb57b58eb82d53c728edf876e7dd93f79dd1dd0405271fd5b6042ece4"

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
