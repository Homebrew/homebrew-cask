cask "qobuz" do
  version "5.7.2-b024"
  sha256 "7321926a8c352f068b0f7b8d05f08321bad0c79ede56719b452e44c52d448775"

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
