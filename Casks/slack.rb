cask "slack" do
  version "4.16.0"

  if Hardware::CPU.intel?
    sha256 "bf2ffeed356699723180fdcdf331dc82caa1bc63ca7b60774aca7df574220e1d"

    url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/x64/Slack-#{version}-macOS.dmg",
        verified: "downloads.slack-edge.com/"
  else
    sha256 "b51f2d494f6daad93031147e688f245d0a34447e9cea91afc0faf265544d6177"

    url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/arm64/Slack-#{version}-macOS.dmg",
        verified: "downloads.slack-edge.com/"
  end

  name "Slack"
  desc "Team communication and collaboration software"
  homepage "https://slack.com/"

  livecheck do
    url "https://slack.com/ssb/download-osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/slack-beta"

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
