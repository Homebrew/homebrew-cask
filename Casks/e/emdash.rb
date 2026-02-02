cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "26aa08a2af5c0061c596f73f5e70e2aa4f60bcd4ef021b7835e21fa571581890",
         intel: "a31e3c24f08207ef637bbaa7fd65d06b9562aed95cc74dadf49efb491e0aee94"

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
