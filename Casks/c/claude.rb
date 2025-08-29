cask "claude" do
  version "0.12.125,b3e63e439cfd5c7bf55297b41368c8d637592960"
  sha256 "16b5a58b3a9231dee746568aeab9e90315043ee2ae712df23e13102d5b4a205f"

  url "https://storage.googleapis.com/osprey-downloads-c02f6a0d-347c-492b-a752-3e0651722e97/nest/release-#{version.csv.first}-artifact-#{version.csv.second}.zip",
      verified: "storage.googleapis.com/osprey-downloads-c02f6a0d-347c-492b-a752-3e0651722e97/nest/"
  name "Claude"
  desc "Anthropic's official Claude AI desktop app"
  homepage "https://claude.ai/download"

  livecheck do
    url "https://storage.googleapis.com/osprey-downloads-c02f6a0d-347c-492b-a752-3e0651722e97/nest/update_manifest.json"
    regex(/release[._-]v?(\d+(?:\.\d+)+)[._-]artifact[._-](\h+)\.zip/i)
    strategy :json do |json, regex|
      json["releases"]&.map do |item|
        match = item.dig("updateTo", "url")&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
