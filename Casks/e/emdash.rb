cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.29"
  sha256 arm:   "284c9e33568f4b8ec4b450005230270f818597cacb42f4b518de7051c62a075f",
         intel: "f03c3fa2adc7061642df68401ae6719beda8552cf43fc1498b0d6311b5920680"

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
