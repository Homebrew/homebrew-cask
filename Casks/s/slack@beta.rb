cask "slack@beta" do
  arch arm: "arm64", intel: "x64"

  version "4.49.89"
  sha256 arm:   "bb9369a66991c82fba1da3c871248638e75546265d4fd184d5e1ef69deab61d6",
         intel: "7b2b0a690d525d272c2f4be38bedf6aff36058dd1e9e2eb6f8b901e2cbd31d41"

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
