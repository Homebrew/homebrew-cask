cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.42"
  sha256 arm:   "7d20bacc65633ef5669429488589709574c43c7aeff02ab9e73f6820eee9072d",
         intel: "a088c907879a1a00606746ec191f1fa07b639fd86d7e906930436b3ba59c52e6"

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
