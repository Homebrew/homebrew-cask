cask "slack" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.22.0"

  if Hardware::CPU.intel?
    sha256 "f79705c4cbc2c3d839d8b1ce6572039761276301424099aec3a59ab2fd4e9724"
  else
    sha256 "a463684c4f73a9fd3a02b5c4ef6c73297730c92aa30426c0e9b2c7a4f66357fc"
  end

  url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/#{arch}/Slack-#{version}-macOS.dmg",
      verified: "downloads.slack-edge.com/releases/macos/"
  name "Slack"
  desc "Team communication and collaboration software"
  homepage "https://slack.com/"

  livecheck do
    url "https://slack.com/ssb/download-osx"
    strategy :header_match
  end

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
    "~/Library/HTTPStorages/com.tinyspeck.slackmacgap.binarycookies",
    "~/Library/Logs/Slack",
    "~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.helper.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap.plist",
    "~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState",
    "~/Library/WebKit/com.tinyspeck.slackmacgap",
  ]
end
