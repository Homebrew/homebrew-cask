cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.33"
  sha256 arm:   "82693ae6bb7643875ea9658b6b87e78adccf8b500cc9981788399654622813a1",
         intel: "f5028aa7f648a14608cfd3033b16af492eb29161a5c2e1e460bfe4eb1c7ac67f"

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
