cask "kiro-cli" do
  version "2.19.2"
  sha256 "1103a77c32ab346200cf9e4ca47143bb4709a18947acb03750c2467392c5baf5"

  url "https://desktop-release.q.us-east-1.amazonaws.com/#{version}/Kiro%20CLI.dmg",
      verified: "desktop-release.q.us-east-1.amazonaws.com/"
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
  depends_on macos: :big_sur

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
