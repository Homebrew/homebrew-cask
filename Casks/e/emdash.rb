cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.47"
  sha256 arm:   "30b9462e6c90fd857cfa15a01854ed1ddb8fb3f659ea72b18805e351cc813077",
         intel: "86ce3db9e8d88a2f22d98e710369c4791bf89d2c508323a1254f992876c1e9f0"

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
