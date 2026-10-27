cask "harper-desktop" do
  version "3.0.0"
  sha256 "cefc5eef2b6987ae020da21b7020812ac6ab381a513cd8ecf67db89619261927"

  url "https://github.com/Automattic/harper/releases/download/v#{version}/Harper_#{version}_universal.dmg"
  name "Harper Desktop"
  desc "Grammar checker for developers"
  homepage "https://writewithharper.com/"

  depends_on macos: :sonoma

  app "Harper.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/harper-desktop_*.plist",
    "~/Library/Application Support/harper-desktop",
    "~/Library/Caches/com.elijahpotter.harper-desktop",
    "~/Library/LaunchAgents/Harper.plist",
    "~/Library/Logs/DiagnosticReports/harper-desktop-*ips",
    "~/Library/WebKit/com.elijahpotter.harper-desktop",
  ]
end
