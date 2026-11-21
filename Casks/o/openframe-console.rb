cask "openframe-console" do
  version "1.0.281"
  sha256 "c50619b84520cbd600d6eaf74dc5009bff181b2f82faee33cafb7008aa11fb69"

  url "https://github.com/flamingo-stack/openframe-oss-frontend/releases/download/#{version}/OpenFrame-Console_#{version}_universal.dmg"
  name "OpenFrame Console"
  desc "Desktop client for IT management notifications and sessions"
  homepage "https://openframe.ai/"

  livecheck do
    url "https://openframe.ai/v0/api/assets/download?agent=desktop&platform=macos"
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  app "OpenFrame Console.app"

  uninstall launchctl: "com.openframe.console",
            quit:      "com.openframe.console"

  zap trash: [
    "~/Library/Application Support/com.openframe.console",
    "~/Library/Caches/com.openframe.console",
    "~/Library/Logs/com.openframe.console",
    "~/Library/WebKit/com.openframe.console",
  ]
end
