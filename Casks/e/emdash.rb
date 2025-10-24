cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.21"
  sha256 arm:   "fe964ae3c0a2275f9dee301bfcd430b0e7de5ea5c8a5353633954bb60b384823",
         intel: "42dc1e90972c576c98e6d372ee54a399203af27c28542b95517a48094345e4db"

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
