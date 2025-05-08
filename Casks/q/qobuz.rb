cask "qobuz" do
  arch arm: "arm64/bigsur", intel: "x64/elCapitan_sierra"

  version "8.0.0,009"
  sha256 arm:   "0037fec20d8fa5f98e2a9a7c29d161e6cba4438484ed521e5792f3ac2e50a98e",
         intel: "788f35772f58d238134c06a50854e9583a57e1bada9fd78a15b3d65daf62e794"

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
