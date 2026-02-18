cask "slack@beta" do
  arch arm: "arm64", intel: "x64"

  version "4.48.94"
  sha256 arm:   "5d16cad19df19fb59dcc30e464a4f1bd7f2deb4c42552bcaa9efe2c008d656c5",
         intel: "1b7eed0ea2cb4cabadf2161a3ff4b22d49d68edd6546a23fa79f7542c83b072f"

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
  depends_on macos: ">= :monterey"

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
