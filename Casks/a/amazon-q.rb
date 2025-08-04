cask "amazon-q" do
  version "1.13.1"
  sha256 "47e8b580f34f2ed9b5b36a715e55de8b2e6241655ea5c1c644ba96bd27f29e56"

  url "https://desktop-release.q.us-east-1.amazonaws.com/#{version}/Amazon%20Q.dmg",
      verified: "desktop-release.q.us-east-1.amazonaws.com/"
  name "Amazon Q"
  desc "AI-powered productivity tool for the command-line"
  homepage "https://aws.amazon.com/q/developer/"

  livecheck do
    url "https://desktop-release.q.us-east-1.amazonaws.com/index.json"
    strategy :json do |json|
      json["versions"]&.map { |item| item["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Amazon Q.app"

  zap trash: [
    "~/.local/bin/bash (qterm)",
    "~/.local/bin/fish (qterm)",
    "~/.local/bin/nu (qterm)",
    "~/.local/bin/q",
    "~/.local/bin/qterm",
    "~/.local/bin/zsh (qterm)",
    "~/Library/Application Support/amazon-q",
    "~/Library/Application Support/codewhisperer",
    "~/Library/Caches/com.amazon.codewhisperer",
    "~/Library/LaunchAgents/com.amazon.codewhisperer.launcher.plist",
    "~/Library/Preferences/com.amazon.codewhisperer.plist",
    "~/Library/WebKit/com.amazon.codewhisperer",
  ]
end
