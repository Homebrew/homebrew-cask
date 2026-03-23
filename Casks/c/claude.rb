cask "claude" do
  version "1.1.8308,2498e429e75a5e3ef0234e8c12bcd8def22995ec"
  sha256 "e41edd6433e7041b4d69056c40cfe13dd4a711b12e1bf3a4a5667d92982040a5"

  url "https://downloads.claude.ai/releases/darwin/universal/#{version.csv.first}/Claude-#{version.csv.second}.zip",
      verified: "downloads.claude.ai/releases/darwin/universal/"
  name "Claude"
  desc "Anthropic's official Claude AI desktop app"
  homepage "https://claude.com/download"

  livecheck do
    url "https://downloads.claude.ai/releases/darwin/universal/RELEASES.json"
    regex(%r{/(\d+(?:\.\d+)+)/Claude[._-](\h+)\.zip}i)
    strategy :json do |json, regex|
      json["releases"]&.map do |release|
        match = release.dig("updateTo", "url")&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Claude.app"

  zap trash: [
    "~/Library/Application Support/Claude",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anthropic.claudefordesktop.sfl*",
    "~/Library/Caches/com.anthropic.claudefordesktop",
    "~/Library/Caches/com.anthropic.claudefordesktop.ShipIt",
    "~/Library/HTTPStorages/com.anthropic.claudefordesktop",
    "~/Library/Logs/Claude",
    "~/Library/Preferences/com.anthropic.claudefordesktop.plist",
    "~/Library/Saved Application State/com.anthropic.claudefordesktop.savedState",
  ]
end
