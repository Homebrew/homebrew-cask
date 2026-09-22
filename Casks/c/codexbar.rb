cask "codexbar" do
  version "0.64.1"
  sha256 "2798e3572152ccaf253609cdb61490a82d29aeac73038e944cdca8b0a57e189f"

  url "https://github.com/steipete/CodexBar/releases/download/v#{version}/CodexBar-macos-universal-#{version}.zip"
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
