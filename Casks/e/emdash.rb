cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.18"
  sha256 arm:   "9660de38ddccf0623aec9a2985a19cbf0fa49b4640a2507bd6d12c06e5ade42d",
         intel: "9a0a52644730ee3f9593194140bc6734a47deccf5f3f05d1ee28518b3c49567c"

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
