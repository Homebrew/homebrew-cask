cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.36"
  sha256 arm:   "1a000e2568589c54d1f0a1f2399eaad97432a189e8c86d2044d92588af3225b7",
         intel: "fa74147c5c132ff177bd887c230af99d5a9301eb47f961b5a3eef60ab5d4a66d"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "emdash.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
