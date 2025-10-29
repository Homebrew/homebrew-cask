cask "monotype" do
  version "7.6.3"
  sha256 "435c115e8ef85f3504be01385ff20ceae0d5fca6d8b03dd3c39170e77dc75ab4"

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
