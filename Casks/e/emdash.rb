cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.7"
  sha256 arm:   "a086dfe08a4066deb40bfacffeda9e5f7ba5493737a4fa0cbfe9cc4687abaa3b",
         intel: "4056230feb0484fc31972cf6bf41fd3674b1009c6c75f900f8cc1cfd7e21f639"

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
