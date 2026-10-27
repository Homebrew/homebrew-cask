cask "replit" do
  version "1.1.21,1793056874797478"
  sha256 "3fc7cd1ac05c83eea3ad29eab88692c1832f92d7ed0f96d2abb89d7c870688f9"

  url "https://desktop-updates.replit.com/desktop-app/updates/stable/darwin/arm64/artifacts/#{version.csv.first}/#{version.csv.second}/Replit-#{version.csv.first}-arm64-mac.zip"
  name "Replit"
  desc "Software development and deployment platform"
  homepage "https://replit.com/"

  livecheck do
    url "https://desktop-updates.replit.com/desktop-app/updates/stable/darwin/arm64/latest-mac.yml"
    regex(%r{artifacts/v?(\d+(?:\.\d+)+)/(\d+)/Replit[^/]*?\.zip}i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Replit.app"

  uninstall quit: "com.electron.replit"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.replit.*",
    "~/Library/Application Support/Replit",
    "~/Library/Caches/com.electron.replit",
    "~/Library/Caches/com.electron.replit.ShipIt",
    "~/Library/HTTPStorages/com.electron.replit",
    "~/Library/Logs/Replit",
    "~/Library/Preferences/com.electron.replit.plist",
    "~/Library/Saved Application State/com.electron.replit.savedState",
  ]
end
