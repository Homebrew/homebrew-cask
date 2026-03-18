cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.37"
  sha256 arm:   "8a8fe49f5c0cc759ed0fea54507ed509e33558d38b9704c966a9dcbe99f44a9e",
         intel: "81a1d8c2fe18f4bede8fb631a1eacf7d977d25ec0c2c3fde075ba5e41212e53b"

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
