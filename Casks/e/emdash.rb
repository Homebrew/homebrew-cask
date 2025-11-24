cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.32"
  sha256 arm:   "7fee60d2089d4945bbf0cdd50b140fb493bb395e9e245e66f04926b639fea5ec",
         intel: "992c2c2578e62bf91d9a5012794deaaba403687ec2b8b48d2649819ebfc0f3f7"

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
