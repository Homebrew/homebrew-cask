cask "qobuz" do
  version "6.1.0,020"

  if Hardware::CPU.intel?
    sha256 "c447e9faff69929d080fc4aacbe8338f1f17a1582a7948cd7f050d939aafb0a7"
    url "https://desktop.qobuz.com/releases/darwin/x64/elCapitan_sierra/#{version.csv.first}-b#{version.csv.second}/Qobuz.dmg"
  else
    sha256 "42b588a28daa04c75318db867c1e027ffd52303bcc1c2ed1dfc5c61ba22d5f4f"
    url "https://desktop.qobuz.com/releases/darwin/arm64/bigsur/#{version.csv.first}-b#{version.csv.second}/Qobuz.dmg"
  end

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
