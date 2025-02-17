cask "adlock" do
  version "2.1.6.9"
  sha256 :no_check

  url "https://downloads.adlock.com/mac/AdLock_Installer.dmg"
  name "AdLock"
  desc "Proxy-based ad blocking tool"
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
              "application.com.hankuper.adlock.desktop.146095782.146095788",
              "com.hankuper.adlock.desktop.launcher",
            ],
            quit:      "com.hankuper.adlock.desktop",
            pkgutil:   [
              "com.hankuper.adlock-desktop-ui.pkg",
              "com.hankuper.adlock-resourses.pkg", # `resourses` is an upstream typo of `resources`
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
