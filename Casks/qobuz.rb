cask "qobuz" do
  version "5.8.0-b019"
  sha256 "a623aaa78ced4852a9a7e2e186ebc8837f0f6d33dec4b41cb1af3468c1b72bb4"

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
