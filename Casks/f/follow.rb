cask "follow" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2-beta.0"
  sha256 arm:   "7ff0633e6887505f4f9efaf6d6aafb64475b613d934dda7426a5ebadb471c003",
         intel: "bcdc14e22c2fe894816e4b3e21ff037fccade37bce1b9b42faf8c1eb1cb3eb8c"

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
