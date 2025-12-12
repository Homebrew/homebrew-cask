cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.40"
  sha256 arm:   "a3771fc0b2269a4aee968b8518690b80aaf6e9c27399e5dfee48df3e93cd1267",
         intel: "a8b028dfa3a3776643925b4cbd2bbf94413845c0528be1b43e8e56c5d339ec61"

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
