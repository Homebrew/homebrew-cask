cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "9395815bf0794d9256d3f3a69bfbbff4e96098449f2d3f99bdddd2aaff4c8893",
         intel: "1cf398572de6fe84b46f9ffeb53678b64f9018194384f04d2b667c66b3b466df"

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
