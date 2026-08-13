cask "harper-desktop" do
  version "2.8.0"
  sha256 "a85f451ac486cdff650f58d7bad1602931a680a7604835caada14a3c0dedbc96"

  url "https://github.com/Automattic/harper/releases/download/v#{version}/Harper_#{version}_universal.dmg",
      verified: "github.com/Automattic/harper/"
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
