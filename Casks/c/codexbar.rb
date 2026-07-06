cask "codexbar" do
  version "0.40.0"
  sha256 "f1c908d932c8a60e229474b54833ed6e71bfeccba371b365ee9b04331a6f9075"

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
