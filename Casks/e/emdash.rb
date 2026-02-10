cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.7"
  sha256 arm:   "53dae349221c31ac2e29e316d66ba246b945f7286bc8f5c6dcea0ec0a4b1baa0",
         intel: "4d6bc4f22b7f6027a6de2a1e2f7c61e46e03d495412927fb33af12e7f67ac52a"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
