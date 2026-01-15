cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.51"
  sha256 arm:   "72d5ac722f6c6698d9a8ba9a27d7dcac8c35bafee81f8ea095e20181669774d2",
         intel: "d207a77fbbe5a9da212ee27454f81344c152c31b51e84d32253a6625459320a5"

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
