cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.54"
  sha256 arm:   "5d35abba67a64cbc16f63b7d51291f06d4a757da8ca0e17826f68990b8aa125a",
         intel: "a58e645f7d8d4acb7a275887a484594bc1d9ea5b9e18bb6801a19d1dd6f77181"

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
