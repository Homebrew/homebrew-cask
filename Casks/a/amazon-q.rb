cask "amazon-q" do
  version "1.10.2"
  sha256 "bb91ec9ab052baf4b0343deafb04328b73d9d882b7a33adb167fb6cf0b1bb611"

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
