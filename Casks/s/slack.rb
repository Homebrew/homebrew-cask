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
  on_catalina do
    version "4.33.90"
    sha256 arm:   "8c060d33c7c451b58abaed380da4e6781089530d3b9c12da70e738e27c4eb47c",
           intel: "7e0ba8a18a9cf95090ad80f58437d647eee5d1842ac4f15ea053c16c1629edde"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "4.38.121"
    sha256 arm:   "454ec8969965112d1a14f05ecc8e001e2d05d93974794850394da8730f493f98",
           intel: "22066b4388d188a5e36125e8eeb96e4052f98abf5d02e0c9d6c124f491341af0"

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
  conflicts_with cask: "slack@beta"
  depends_on macos: ">= :mojave"

  app "Slack.app"

  uninstall quit: "com.tinyspeck.slackmacgap"

  zap trash: [
    "~/Library/Application Scripts/com.tinyspeck.slackmacgap",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*",
    "~/Library/Application Support/Slack",
    "~/Library/Caches/com.tinyspeck.slackmacgap*",
    "~/Library/Containers/com.tinyspeck.slackmacgap*",
    "~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies",
    "~/Library/Group Containers/*.com.tinyspeck.slackmacgap",
    "~/Library/Group Containers/*.slack",
    "~/Library/HTTPStorages/com.tinyspeck.slackmacgap*",
    "~/Library/Logs/Slack",
    "~/Library/Preferences/ByHost/com.tinyspeck.slackmacgap.ShipIt.*.plist",
    "~/Library/Preferences/com.tinyspeck.slackmacgap*",
    "~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState",
    "~/Library/WebKit/com.tinyspeck.slackmacgap",
  ]
end
