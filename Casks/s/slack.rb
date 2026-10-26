cask "slack" do
  arch arm: "arm64", intel: "x64"

  on_monterey :or_older do
    on_big_sur :or_older do
      version "4.45.69"
      sha256 arm:   "31a3f08f49e27a1c0d6224a5f0677329217599eccab481620266730566f0abd0",
             intel: "88ee611b36189ab1e84f39f0fbe0048468d32a24e783303dfe1a3ea0519755e2"

      url "https://downloads.slack-edge.com/releases/macos/#{version}/prod/#{arch}/Slack-#{version}-macOS.dmg"
    end
    on_monterey do
      version "4.51.191"
      sha256 arm:   "b22953c06eee150f0324ae71702b2b5a8450efdefbf84439217ef7bfd6a8ab24",
             intel: "1780f8d8dcb0057875f566ecf49623bab8d190e0327e89e0bb3b094a485a73a9"

      url "https://downloads.slack-edge.com/desktop-releases/mac/#{arch}/#{version}/Slack-#{version}-macOS.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "4.53.269"
    sha256 arm:   "f94e8c2b147bfd0d38bea5742ac05a8b8d24201f938a9682f7ede7ee2ed367af",
           intel: "fb27903ac292ff5a9b4a2575ae30cc1529102f7a0a2d2f64aaf58a5b45725a60"

    url "https://downloads.slack-edge.com/desktop-releases/mac/#{arch}/#{version}/Slack-#{version}-macOS.dmg"

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
  depends_on :macos

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
