cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.50"
  sha256 arm:   "2072247545b0b0c44588fbc4187065585077d20abc343f88247b630c9efdbfb1",
         intel: "bb933d618118001e5ec2ecfdbe10123ee81ad7f07346d3cdd9fa840124400ff6"

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
