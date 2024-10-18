cask "qobuz" do
  arch arm: "arm64/bigsur", intel: "x64/elCapitan_sierra"

  version "7.2.0,116"
  sha256 arm:   "8de8f99fff3f87983e1899bc5091ca6ce6f27b17ae9ab0c745a9491c28294053",
         intel: "f6fc28c7a6f07f81e7f5e4f69fbb95ae7df701b4789d721b0efe799431ba6d7c"

  url "https://desktop.qobuz.com/releases/darwin/#{arch}/#{version.csv.first}-b#{version.csv.second}/Qobuz.dmg"
  name "Qobuz"
  desc "Catalogue of hi-res music for streaming and download"
  homepage "https://www.qobuz.com/applications"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)-b(\d+)/Qobuz\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
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
