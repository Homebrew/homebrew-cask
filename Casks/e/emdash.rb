cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.34"
  sha256 arm:   "201ee316b9603e824780ccfa32cd75388698f4eff9cb622c8e5193ca3dd60ea0",
         intel: "f0360f10660bfbfe7085eee6a88e7cba7d3865123cd937d10e85867de3ae4d5d"

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
