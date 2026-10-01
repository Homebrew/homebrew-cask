cask "harper-desktop" do
  version "2.12.0"
  sha256 "1c8497904012fd0bd5236919b8a7dab32166bbf8c9e27fe730a630e223d12827"

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
