cask "kiro-cli" do
  version "2.22.0"
  sha256 "ac9079e6f36fc694ea2611b2ce8aa3e40302958ff8f2d36e864be226eecf3b76"

  url "https://desktop-release.q.us-east-1.amazonaws.com/#{version}/Kiro%20CLI.dmg"
  name "Kiro CLI"
  desc "AI-powered productivity tool for the command-line"
  homepage "https://kiro.dev/docs/cli/"

  livecheck do
    url "https://desktop-release.q.us-east-1.amazonaws.com/latest/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Kiro CLI.app"
  binary "#{appdir}/Kiro CLI.app/Contents/MacOS/kiro-cli"

  uninstall launchctl: "com.amazon.codewhisperer.launcher"

  zap trash: [
    "~/.kiro",
    "~/.local/bin/kiro-cli",
    "~/.local/bin/kiro-cli-chat",
    "~/Library/Application Support/kiro-cli",
    "~/Library/Caches/com.amazon.codewhisperer",
    "~/Library/Caches/dev.kiro.cli",
    "~/Library/LaunchAgents/com.amazon.codewhisperer.launcher.plist",
    "~/Library/Preferences/dev.kiro.cli.plist",
    "~/Library/WebKit/com.amazon.codewhisperer",
  ]
end
