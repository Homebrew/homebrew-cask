cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.31"
  sha256 arm:   "b1e13592bfa4bd8f97a0c1f34d72008273d3dba14727e1b6cc9f8ea4aa80fbb8",
         intel: "3b056a2e8597c64bb798ebb962fa7e8e9f8b38de4f94c840356fdf5255ff42bb"

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
