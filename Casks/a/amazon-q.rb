cask "amazon-q" do
  version "1.19.7"
  sha256 "e506d851874a6e563ad0749c28831aa752b0e93ad94d16eeac04d44167c7476d"

  url "https://desktop-release.q.us-east-1.amazonaws.com/#{version}/Amazon%20Q.dmg",
      verified: "desktop-release.q.us-east-1.amazonaws.com/"
  name "Amazon Q"
  desc "AI-powered productivity tool for the command-line"
  homepage "https://aws.amazon.com/q/developer/"

  livecheck do
    url "https://desktop-release.q.us-east-1.amazonaws.com/index.json"
    strategy :json do |json|
      json["versions"]&.map do |item|
        # The JSON data contains versions of other software, so we have to
        # specifically target Q versions
        next unless item["packages"]&.find { |pkg| pkg["download"]&.match?(%r{/[^/]*?Q\.dmg$}i) }

        item["version"]
      end
    end
  end

  auto_updates true

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
