cask "kiro-cli" do
  version "3.5.0"
  sha256 "150d32c345af7e01da6974d5a6aad93d9ca7c2a39b86fcee27c33094bdecaaf3"

  url "https://desktop-release.q.us-east-1.amazonaws.com/#{version}/kirocli-universal-darwin.zip"
  name "Kiro CLI"
  desc "AI-powered productivity tool for the command-line"
  homepage "https://kiro.dev/docs/cli/"

  livecheck do
    url "https://desktop-release.q.us-east-1.amazonaws.com/latest/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  binary "kirocli/bin/kiro-cli"

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
