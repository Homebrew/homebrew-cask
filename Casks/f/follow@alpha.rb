cask "follow@alpha" do
  version "0.0.1-alpha.22"
  sha256 "372d62924841a9082ce618bff2964cf4d0b10706b79da73aa93d51f0432033dc"

  url "https://github.com/RSSNext/Follow/releases/download/v#{version}/Follow-#{version}-macos-universal.dmg",
      verified: "github.com/RSSNext/Follow/"
  name "Follow"
  desc "Information browser"
  homepage "https://follow.is/"

  disable! date: "2025-01-10", because: :discontinued

  conflicts_with cask: [
    "follow",
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
