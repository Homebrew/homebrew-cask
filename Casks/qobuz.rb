cask "qobuz" do
  version "5.8.0-b026"
  sha256 "324648ae9ce722403a79a74878b0a52be6f6433a91de175bf07daa2e5e82a6ab"

  url "https://desktop.qobuz.com/releases/darwin/x64/elCapitan_sierra/#{version}/Qobuz.dmg"
  name "Qobuz"
  homepage "https://www.qobuz.com/applications"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/(\d+(?:\.\d+)*-b\d+)/Qobuz\.dmg}i)
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
