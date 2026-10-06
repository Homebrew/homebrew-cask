cask "fontstand" do
  version "3.0.12,17"
  sha256 "0bca73cb9fc87a95e1fa43a5cc780b79f3be1abaee9ac858af27992bb9ef94d0"

  url "https://api.fontstand.com/assets/Uploads/Website/App/Fontstand-v#{version.csv.second}.zip"
  name "Fontstand"
  desc "Font discovery and rental platform"
  homepage "https://fontstand.com/"

  livecheck do
    url "https://api.fontstand.com/api/v3/app/sparkle/149?os=macos-26"
    regex(%r{/Fontstand[._-]v?(\d+(?:\.\d+)*)\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Fontstand.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fontstand-bv.mac.fontstand.sfl*",
    "~/Library/Application Support/com.fontstand-bv.mac.Fontstand-Agent",
    "~/Library/Application Support/Fontstand Agent",
    "~/Library/Application Support/Fontstand",
    "~/Library/Caches/com.fontstand-bv.mac.Fontstand",
    "~/Library/HTTPStorages/com.fontstand-bv.mac.Fontstand",
    "~/Library/HTTPStorages/com.fontstand-bv.mac.Fontstand-Agent",
    "~/Library/LaunchAgents/com.fontstand-bv.mac.Fontstand-Agent.plist",
    "~/Library/Preferences/com.fontstand-bv.mac.Fontstand-Agent.plist",
    "~/Library/Preferences/com.fontstand-bv.mac.Fontstand.plist",
    "~/Library/WebKit/com.fontstand-bv.mac.Fontstand",
  ]
end
