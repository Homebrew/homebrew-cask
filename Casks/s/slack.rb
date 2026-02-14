cask "slack" do
  arch arm: "arm64", intel: "x64"

  on_big_sur :or_older do
    version "4.45.69"
    sha256 arm:   "31a3f08f49e27a1c0d6224a5f0677329217599eccab481620266730566f0abd0",
           intel: "88ee611b36189ab1e84f39f0fbe0048468d32a24e783303dfe1a3ea0519755e2"

    url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/#{arch}/Slack-#{version}-macOS.dmg",
        verified: "downloads.slack-edge.com/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "4.48.92"
    sha256 arm:   "bb3996ddc753e3b7be889d297e52ee8ff4bb8c01106b1e32877706026ba42872",
           intel: "e0d6e9e20d920a8a50a2e0ab27296b6f9294eceaeca8e26c7ed7d094b6443e01"

    url "https://downloads.slack-edge.com/desktop-releases/mac/#{arch}/#{version}/Slack-#{version}-macOS.dmg",
        verified: "downloads.slack-edge.com/"

    livecheck do
      url "https://slack.com/ssb/download-osx"
      strategy :header_match
    end
  end

  name "Slack"
  desc "Team communication and collaboration software"
  homepage "https://slack.com/"

  auto_updates true
  conflicts_with cask: "slack@beta"
  depends_on macos: ">= :big_sur"

  app "Slack.app"

  uninstall quit: "com.tinyspeck.slackmacgap"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Slack_*",
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
