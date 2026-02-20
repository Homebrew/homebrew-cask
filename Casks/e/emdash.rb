cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.15"
  sha256 arm:   "910228ab191e67a4e6f6cc1deaf4d9f415d66f25f22207467899e1eba0f31944",
         intel: "588782a919a20a14db6ad2a99cb3571bb1c7da65ebdbe1e93aa0dad2f14f9d49"

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
