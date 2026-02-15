cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.11"
  sha256 arm:   "1512a7afd56f0478c027bbc3f46f9e0bdbaebd7d42688734db345a5f5a21595f",
         intel: "3ae74234cd95306a7d2e4fcbf774db2a016cb22bb085f55c65d6bf880b40dee1"

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
