cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.35"
  sha256 arm:   "6c096bdbccb1698e71bc24a8b9805317486ed21dcf6fefd34086e2a574d786a0",
         intel: "8ee07115bfb852002faf6084c33bfe63b2851f03e52b5aabd49faccad33eb089"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
