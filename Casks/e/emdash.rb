cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.44"
  sha256 arm:   "22306469cdea0b7453e5ef3e8a8759a5343a2ce940d9da93a169dab59a5dbeb3",
         intel: "1fd3e6ad81d426960effb9d57eaf3412b11133e7d83b1258482811d2e5de37f0"

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
