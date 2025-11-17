cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.30"
  sha256 arm:   "5a9f9553112f231ffc5bf646637136bf87caadfad6daa40f4dd6e5d2c33584af",
         intel: "9d05429b5cd4a798b46da743642de15bab0f49e0faff5489b680b510cf75b932"

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
