cask "slack@beta" do
  arch arm: "arm64", intel: "x64"

  version "4.52.155"
  sha256 arm:   "28f3d5dcdfcb267c10a863417bcdfe6d1a6f73b214965b19f72c825fd4b7b60e",
         intel: "21669dad8412cbe75af0e0ea694fe3fb0b49e36e2600c5d0f39676a17fcd4201"

  url "https://downloads.slack-edge.com/desktop-releases/mac/#{arch}/#{version}/Slack-#{version}-macOS.dmg",
      verified: "downloads.slack-edge.com/desktop-releases/mac/"
  name "Slack"
  desc "Team communication and collaboration software"
  homepage "https://slack.com/beta/osx"

  livecheck do
    url "https://slack.com/ssb/download-osx-beta"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "slack"
  depends_on macos: :ventura

  app "Slack.app"

  uninstall quit: "com.tinyspeck.slackmacgap"

  zap trash: [
    "~/Library/Application Scripts/com.tinyspeck.slackmacgap",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*",
    "~/Library/Application Support/Slack",
    "~/Library/Caches/com.tinyspeck.slackmacgap",
    "~/Library/Caches/com.tinyspeck.slackmacgap.ShipIt",
    "~/Library/Containers/com.tinyspeck.slackmacgap",
    "~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService",
    "~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies",
    "~/Library/Group Containers/*.com.tinyspeck.slackmacgap",
    "~/Library/Group Containers/*.slack",
    "~/Library/Logs/Slack",
    "~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.plist",
    "~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState",
    "~/Library/WebKit/com.tinyspeck.slackmacgap",
  ]
end
