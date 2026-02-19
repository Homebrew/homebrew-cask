cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.14"
  sha256 arm:   "982db726f055a6bfe823445c82c32774c7b5fb91379906d6e57e4e3935425d93",
         intel: "087b1ffea8eb9b9afa39c02b2d7bb27569a8922766d269ca356e235aedb27308"

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
