cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.12"
  sha256 arm:   "8b71add651b382f2b8937e33dc5709e11750535cdc64f5436fae8bba76bfeb72",
         intel: "4a1b316e119c277cb8c1421cb4ed28e20240c239c24d955c93ba9ebd88728299"

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
