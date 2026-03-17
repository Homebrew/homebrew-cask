cask "claude" do
  version "1.1.7203,034f0796e916559a4e40673b6ee944c25a8478b2"
  sha256 "af99a8511aa50c9c48abc11a056b9459857e63f62687106720edc7725c42d48f"

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
