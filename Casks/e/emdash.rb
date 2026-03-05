cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.25"
  sha256 arm:   "499f49e2a5d30fc9074b5c60adff6fd5dd5fd2a03b6854534c87f10ffe1a16b1",
         intel: "665c9e3c138bcf23761955938c6e67cd564594e7bc44738a060af1bb53b8f9a1"

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
