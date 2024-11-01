cask "claude" do
  version "0.4.8,abfc4944184bdf344113a54b0fcaddfc8040176b"
  sha256 "6e3cc0dfdb145128790855aee8ed08b76a32e0f01827fddf86a0f27836c4da73"

  url "https://storage.googleapis.com/osprey-downloads-c02f6a0d-347c-492b-a752-3e0651722e97/nest/release-#{version.csv.first}-artifact-#{version.csv.second}.zip",
      verified: "storage.googleapis.com/osprey-downloads-c02f6a0d-347c-492b-a752-3e0651722e97/nest/"
  name "Claude"
  desc "Anthropic's official Claude AI desktop app"
  homepage "https://claude.ai/download"

  livecheck do
    url "https://storage.googleapis.com/osprey-downloads-c02f6a0d-347c-492b-a752-3e0651722e97/nest/update_manifest.json"
    regex(/release[-_.](\d+(?:\.\d+)+)[-_.]artifact[-_.](\h+)\.zip$/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |item|
        match = item.dig("updateTo", "url")&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Claude.app"

  zap trash: [
    "~/Library/Application Support/Claude",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anthropic.claudefordesktop.sfl*",
    "~/Library/Caches/com.anthropic.claudefordesktop",
    "~/Library/Caches/com.anthropic.claudefordesktop.ShipIt",
    "~/Library/HTTPStorages/com.anthropic.claudefordesktop",
    "~/Library/Preferences/com.anthropic.claudefordesktop.plist",
    "~/Library/Saved Application State/com.anthropic.claudefordesktop.savedState",
  ]
end
