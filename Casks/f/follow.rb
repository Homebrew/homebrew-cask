cask "follow" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0-beta.2"
  sha256 arm:   "0277f1281d7951bb773ddaf8d8b660e75e9af74990aaa10605a8094a3c1a1a18",
         intel: "b5f9e601e02db0fde39ef8d7b336b3e234d4b6717c981ace0f9d3656903aaa02"

  url "https://github.com/RSSNext/Follow/releases/download/v#{version}/Follow-#{version}-macos-#{arch}.dmg",
      verified: "github.com/RSSNext/Follow/"
  name "Follow"
  desc "Information browser"
  homepage "https://follow.is/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]beta[._-]?\d+)?)$/i)
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: [
    "follow@alpha",
    "follow@nightly",
  ]
  depends_on macos: ">= :catalina"

  app "Follow.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Follow",
    "~/Library/Logs/Follow",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
