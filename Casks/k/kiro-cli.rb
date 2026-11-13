cask "kiro-cli" do
  version "3.3.0"
  sha256 "97906d8a4b6c1e77435c1f50048d2da2fbde7755f72cefdb59cc15b1f85575b8"

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
