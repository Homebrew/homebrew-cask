cask "slack" do
  arch arm: "arm64", intel: "x64"

  on_mojave :or_older do
    version "4.29.149"
    sha256 arm:   "367f9d143dc7fc1cbe6813cb0f19cf9de357b8597eb4774b87125779804c3918",
           intel: "13462738f9da5857b5ee00a9172c31bb9b87b35a4492d035b54bb842abca858c"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "4.32.127"
    sha256 arm:   "513b258579c5b578c4a9410343bfdb6b364c3350a2293abd6fa7a11f085ca11b",
           intel: "5aae1b6c814d23c5d0b878194179866440fb22091341dc76f8ceaec3de37aa4c"

    livecheck do
      url "https://slack.com/ssb/download-osx"
      strategy :header_match
    end
  end

  url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/#{arch}/Slack-#{version}-macOS.dmg",
      verified: "downloads.slack-edge.com/releases/macos/"
  name "Slack"
  desc "Team communication and collaboration software"
  homepage "https://slack.com/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/slack-beta"
  depends_on macos: ">= :mojave"

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
    "~/Library/HTTPStorages/com.tinyspeck.slackmacgap*",
    "~/Library/Logs/Slack",
    "~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.plist",
    "~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState",
    "~/Library/WebKit/com.tinyspeck.slackmacgap",
  ]
end
