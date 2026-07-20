cask "harper-desktop" do
  version "2.6.0"
  sha256 "1a62cb2fe8be6f4ec797923dfa7f07d81469d5b75c649f6c7fbfc8d253f0a9dc"

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
