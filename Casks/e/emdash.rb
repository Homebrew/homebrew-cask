cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.43"
  sha256 arm:   "ce081a3fd57fc0cf4497ac651518b13fc1c1863943de8c43e4cccde64b3cff4a",
         intel: "82324185090560525b9f51457f7ccb938291628823b2a04e9407fff21aa74530"

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
