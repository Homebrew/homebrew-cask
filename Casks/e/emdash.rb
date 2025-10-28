cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.22"
  sha256 arm:   "649f3b3f95d4150f86870fa3cda16e9b0f2d57904c94555e1451375527ca561b",
         intel: "3af9303dc8a7e95b8b7be46f64e5890cdfa042722157e7397d06bccfd7d22f7f"

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
