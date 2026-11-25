cask "qobuz" do
  arch arm: "arm64/bigsur", intel: "x64/elCapitan_sierra"

  version "8.3.0,028"
  sha256 arm:   "f4b42458017347442ea60da90060e0c27638741cb6c4d35d412430ea1bfa73ab",
         intel: "246a4cdb8a2dae69ca5459a530823505907317837c770846ff4a394fc4cd4897"

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

  uninstall quit: "com.qobuz.desktop"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qobuz.desktop.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qobuz.qobuzdesktop.sfl*",
    "~/Library/Application Support/Qobuz",
    "~/Library/Application Support/QobuzDesktop",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.qobuz.QobuzDesktop",
    "~/Library/Caches/com.qobuz.QobuzDesktop",
    "~/Library/Logs/QobuzDesktop",
    "~/Library/Preferences/com.qobuz.desktop.plist",
    "~/Library/Preferences/com.qobuz.QobuzDesktop.plist",
  ]
end
