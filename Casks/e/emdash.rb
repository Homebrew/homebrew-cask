cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.39"
  sha256 arm:   "48826ff3bfeedcfd9c48e05fc368f5b3b99d81a8d30c71d3aa35ecaacdfee56a",
         intel: "e1368682ef34eaddd214e3ac3f7d1773c41cb822c13371ea16dcbc4198fe7802"

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
