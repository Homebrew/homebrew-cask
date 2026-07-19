cask "codexbar" do
  version "0.45.1"
  sha256 "37f0df670d47e36474aecc825b3b1fac8e830200a7982bd282a78e0e85d0b5ad"

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
