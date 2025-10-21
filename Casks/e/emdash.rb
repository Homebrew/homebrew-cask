cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.17"
  sha256 arm:   "8328d034a34b4aaff1d13c6fb72f7d4372952cf00931756310ab4f345cd7736f",
         intel: "04e9fc80040415695d658028c7d92d7eed4fbff43dc4167ddbf31b9fba80c555"

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
