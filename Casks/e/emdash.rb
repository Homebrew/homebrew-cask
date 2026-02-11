cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.8"
  sha256 arm:   "1365a5f480dd0e14ca10526e12e5f3e36a0f40bfb593a4d90524ecc604b34fdc",
         intel: "cc3d74c2de4f34a3e49e9752709997702f7ee1d7d11d6858d6fffa58a02a5aeb"

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
