cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.16"
  sha256 arm:   "ae427df6f89e397e6625cb30ec3a20f872d90f6abde7d01f11f0c354332143c5",
         intel: "f73258acb5df60ff3f04a0ec4f6f84d7f17b80a8c58dd88da5b72ca331ce1f80"

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
