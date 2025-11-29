cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.33"
  sha256 arm:   "9c6822cfced80fa64e9a358d93532c985bb2b8d2eefbb8fbc2c46ca711b6b8e3",
         intel: "60335387bf284ecc242e64492a05578f5da4ae0403ee771d258db044d75a24ee"

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
