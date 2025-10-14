cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.6"
  sha256 arm:   "049c6898af010847d8a1fa5d0c8317a50aacaa8d956b2823de4b9c1988f2775e",
         intel: "85e518df7adcc8b6a3e73abbd530a821bc6489d481664984c9903b1f82c3d972"

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
