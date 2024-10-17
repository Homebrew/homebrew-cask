cask "adlock" do
  version "2.1.6.4"
  sha256 "f0f925c4a9e681a2741c6c063ee04ad0a058c7f91435cc5ec873b253df12af18"

  url "https://downloads.adlock.com/mac/AdLock_Installer.dmg"
  name "AdLock"
  desc "The Premier Ad Blocker for Distraction-Free Surfing"
  homepage "https://adlock.com/"

  livecheck do
    url "https://adlock.com/api/?type=versions"
    strategy :json do |json|
      json.map do |release|
        next if release["slug"] != "dmg"

        release.dig("yoast_head_json", "og_description")
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "AdLock-Installer.pkg"

  uninstall launchctl: [
              "com.hankuper.adlock.desktop.launcher",
              "application.com.hankuper.adlock.desktop.146095782.146095788",
            ],
            quit:      "com.hankuper.adlock.desktop",
            pkgutil:   [
              "com.hankuper.adlock-desktop-ui.pkg",
              "com.hankuper.adlock-resourses.pkg",
            ],
            delete:    [
              "/Applications/AdLock.app",
              "/Library/Application Support/com.hankuper.adlock.desktop",
            ]

  zap delete: "/Library/Logs/DiagnosticReports/com.hankuper.adlock.desktop*.ips",
      trash:  [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankuper.adlock.desktop.launcher.sfl*",
        "~/Library/Caches/com.hankuper.adlock.desktop",
        "~/Library/HTTPStorages/com.hankuper.adlock.desktop",
        "~/Library/Preferences/com.hankuper.adlock.desktop*.plist",
        "~/Library/WebKit/com.hankuper.adlock.desktop",
      ]
end
