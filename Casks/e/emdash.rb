cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.30"
  sha256 arm:   "66ba8e5863141a6701eabbd730a3795d90e091cc32510d63539fde4e868fabf6",
         intel: "72dbecf6eec1478eaa149123b79cfb1740e8ec07fac342a96b58dbd37e4c79c1"

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
