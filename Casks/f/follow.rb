cask "follow" do
  arch arm: "arm64", intel: "x64"

  version "0.3.4-beta.0"
  sha256 arm:   "0c348995f7cfa1ce332ac4d20a95c3fb3c529d6daf8ec0d12a470d956a462cb3",
         intel: "b4048fc3c12ff3efab2dc09c68ffd67ce9b6b01815f6a1e1231c2ac2bac13188"

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
  depends_on macos: ">= :big_sur"

  app "Follow.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Follow",
    "~/Library/Logs/Follow",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
