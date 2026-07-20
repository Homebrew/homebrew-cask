cask "qobuz" do
  arch arm: "arm64/bigsur", intel: "x64/elCapitan_sierra"

  version "8.2.0,033"
  sha256 arm:   "a33b008770682ac90c1faa2f6b4a0886ca632f6043c5819389ad5bb5de259e19",
         intel: "9535d930aa82e9e19034cc74c02d93a9e62996a4f3da66fc7367d1e28c9fb205"

  url "https://desktop.qobuz.com/releases/darwin/#{arch}/#{version.csv.first}-b#{version.csv.second}/Qobuz.dmg"
  name "Qobuz"
  desc "Catalogue of hi-res music for streaming and download"
  homepage "https://www.qobuz.com/applications"

  livecheck do
    url "https://desktop.qobuz.com/updates/check/darwin/#{arch}/updates.json"
    strategy :json do |json|
      json["version"]&.sub("-b", ",")
    end
  end

  auto_updates true
  depends_on :macos

  app "Qobuz.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qobuz.qobuzdesktop.sfl*",
    "~/Library/Application Support/QobuzDesktop",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.qobuz.QobuzDesktop",
    "~/Library/Caches/com.qobuz.QobuzDesktop",
    "~/Library/Logs/QobuzDesktop",
    "~/Library/Preferences/com.qobuz.QobuzDesktop.plist",
  ]
end
