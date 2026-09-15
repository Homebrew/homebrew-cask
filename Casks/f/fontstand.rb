cask "fontstand" do
  version "3.0.11,16"
  sha256 "c8f688de49cc7d06779d65087f9f684369d4d0c9beb84bebac95cab29a53feed"

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
