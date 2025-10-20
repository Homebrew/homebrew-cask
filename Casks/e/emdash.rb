cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.11"
  sha256 arm:   "0fca9aadab4c01776133c47df852d5f61d662a6d4e0c4439eed5d90201490f45",
         intel: "4a453bc591ca5d5d4b26b03a4998e9a8e6d954ec2ce8c53e0c5009444b615630"

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
