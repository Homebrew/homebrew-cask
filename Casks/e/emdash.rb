cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.18"
  sha256 arm:   "b270206ae586034aa8aa9f1c7e2f7778a88a6f889f3e3e5c95f95e9bb4c8a41c",
         intel: "1a7fd1041b9ef5ee2dc9553a0040132ddf3a5073078b62cef8b44492a1e34fb6"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "~/Library/Logs/emdash",
    "~/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
