cask "qobuz" do
  arch arm: "arm64/bigsur", intel: "x64/elCapitan_sierra"

  version "7.0.0,006"
  sha256 arm:   "489a4f56231913e6fe2b68c4aaf245fd6fee0ab2fd4e04b34f1c91c759e2d4f6",
         intel: "c0edd4a7847d081ea91bf1136d24d605146151f683d3a99505780537b263df55"

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
