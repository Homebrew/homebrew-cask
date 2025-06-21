cask "monotype" do
  version "7.5.0"
  sha256 "e4903267a9535e0155ec70a2c23f411410d473c27f4399ca53de39ac37a2ae39"

  url "https://monotypeapp.monotype.com/release/#{version.no_dots}/mac/MTFInstallerMacOS.zip"
  name "Monotype Desktop App"
  desc "Font finder and organiser"
  homepage "https://support.monotype.com/en/articles/7860542-monotype-desktop-app"

  livecheck do
    url "https://support.monotype.com/en/articles/8617063-release-notes"
    regex(/>\s*Version\s*v?(\d+(?:\.\d+)+)\s*["'<]/im)
  end

  auto_updates true

  pkg "MTFInstaller.pkg"

  uninstall launchctl: [
              "com.monotype.mfep",
              "com.monotype.monitorService",
              "com.monotype.ms",
              "com.monotype.updater",
            ],
            quit:      "com.monotype.monotype-fonts",
            pkgutil:   "com.monotype.monotype-fonts"

  zap trash: [
    "~/Library/Application Scripts/com.monotype.notification-service",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.monotype.*.sfl*",
    "~/Library/Application Support/Monotype Fonts",
    "~/Library/Containers/com.monotype.notification-service",
    "~/Library/Logs/Monotype Fonts",
    "~/Library/Preferences/com.monotype.*.plist",
    "~/Library/Saved Application State/com.monotype.*.savedState",
  ]
end
