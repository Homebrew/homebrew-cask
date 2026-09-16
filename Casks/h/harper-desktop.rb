cask "harper-desktop" do
  version "2.11.0"
  sha256 "78dac0b045bdf2908cc7e5281d003e22748aa7f6f9e05544d0a5dff151cd7e89"

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
