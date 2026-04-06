cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.46"
  sha256 arm:   "e9bd6ddc4960618027b29f30de2abdab73d4207deada956f2c1d3d245081482b",
         intel: "55c2df38ed71fb3caac2ca8c53bf404336548159b82042f9d2d72953983e5f1e"

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
