cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.26"
  sha256 arm:   "ab88999f2f04d604ae269a5dd46ced4700cd7070330e414b46b760ef6d49649d",
         intel: "f685397fe734c38ac4b83076ac11bcaa1babea2c6fdfdf700d73bc8b61127c1c"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
