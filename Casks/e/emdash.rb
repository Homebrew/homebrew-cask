cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.53"
  sha256 arm:   "6560802e93cb38c10e5483f36c8e74f40edec5659d65146df615083ddf3447d9",
         intel: "ddab0b3a25e448ee1e7f3979fc69968afc7c1bba43388ccc0da22d0b20db1ecf"

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
