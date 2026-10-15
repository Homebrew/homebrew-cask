cask "claude" do
  version "2.42304.0,e7f60e658f15cfece9efa384a78a39aec3c12845"
  sha256 "3d63d7180ead976ab268529c693a584df72e06824d5770937c79d6d8bc100cb4"

  url "https://downloads.claude.ai/releases/darwin/universal/#{version.csv.first}/Claude-#{version.csv.second}.zip"
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
  depends_on macos: :ventura

  app "Claude.app"

  uninstall quit: [
    "com.anthropic.claudefordesktop",
    "com.anthropic.claudefordesktop.helper",
  ]

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
