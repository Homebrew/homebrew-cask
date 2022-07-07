cask "qobuz" do
  arch = Hardware::CPU.intel? ? "x64/elCapitan_sierra" : "arm64/bigsur"

  version "6.1.1,036"

  if Hardware::CPU.intel?
    sha256 "a09027ddeba06306a7758b17a0dd44e643e49086a497be1cdd84d9cd747dcf6f"
  else
    sha256 "ac0624b9de579a6d6cd33a2f75f8e4f57aa4b48d6dc63ebf664b8dba472b3c8d"
  end

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
