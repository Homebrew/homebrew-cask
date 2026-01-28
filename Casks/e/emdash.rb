cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.55"
  sha256 arm:   "17eeefd9107749e3a71c559b6521504782fed7d5c9afb27ba7d1f856984c5058",
         intel: "adf72fbfe54f6372a5761d92ad09a8e787ae9e1917b112d23b0d876181fa12b3"

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
