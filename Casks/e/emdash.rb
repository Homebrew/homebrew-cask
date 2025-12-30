cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.44"
  sha256 arm:   "7f016cda398ecd428309077b2441400532f1671062f7113c1a474451f5419f88",
         intel: "b2cc9036cc9a67a1d07be0b16d6915237a9dd4f439683e4fc38f0bd59e818596"

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
