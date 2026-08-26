cask "codexbar" do
  version "0.55.1"
  sha256 "90fed31aea1f6579423a24478377768ba2c3a1570fc57d7c9f4bdaec052fe902"

  url "https://github.com/steipete/CodexBar/releases/download/v#{version}/CodexBar-macos-universal-#{version}.zip",
      verified: "github.com/steipete/CodexBar/"
  name "CodexBar"
  desc "Menu bar usage monitor for Codex and Claude"
  homepage "https://codexbar.app/"

  depends_on macos: :sonoma

  app "CodexBar.app"
  binary "#{appdir}/CodexBar.app/Contents/Helpers/CodexBarCLI", target: "codexbar"

  uninstall quit: "com.steipete.codexbar"

  zap trash: [
    "~/.codexbar",
    "~/Library/Application Scripts/*.com.steipete.codexbar",
    "~/Library/Application Scripts/com.steipete.codexbar",
    "~/Library/Application Scripts/com.steipete.codexbar.widget",
    "~/Library/Application Support/CodexBar",
    "~/Library/Application Support/com.steipete.codexbar",
    "~/Library/Application Support/CrashReporter/CodexBar_*.plist",
    "~/Library/Caches/CodexBar",
    "~/Library/Caches/com.steipete.codexbar",
    "~/Library/Containers/com.steipete.codexbar",
    "~/Library/Containers/com.steipete.codexbar.widget",
    "~/Library/Group Containers/*.com.steipete.codexbar",
    "~/Library/HTTPStorages/codexbar",
    "~/Library/HTTPStorages/codexbar.binarycookies",
    "~/Library/HTTPStorages/com.steipete.codexbar",
    "~/Library/HTTPStorages/com.steipete.codexbar.binarycookies",
    "~/Library/Logs/DiagnosticReports/CodexBar-*.ips",
    "~/Library/Preferences/com.steipete.codexbar.plist",
    "~/Library/Saved Application State/com.steipete.codexbar.savedState",
    "~/Library/WebKit/codexbar",
    "~/Library/WebKit/com.steipete.codexbar",
  ]
end
