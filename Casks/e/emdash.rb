cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.49"
  sha256 arm:   "83760d80235d747e0f32fbfbde2a2f0412d2da0fc193a36dffaaf8a427dcd69e",
         intel: "e218ae77f3c590358fd537c022be4ebaa8cc8e9872ad979fc76d6fc4636413bb"

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
