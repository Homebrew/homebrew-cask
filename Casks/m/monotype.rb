cask "monotype" do
  version "7.2.0"
  sha256 "f355665016c5d7a4b5a88d67c90f99ae33089dad88970b37bca48f74bee74d56"

  url "https://monotypeapp.monotype.com/release/#{version.no_dots}/mac/MTFInstaller.zip"
  name "Monotype Desktop App"
  desc "Font finder and organiser"
  homepage "https://support.monotype.com/en/articles/7860542-monotype-desktop-app"

  livecheck do
    url "https://support.monotype.com/en/articles/8617063-latest-release-notes"
    regex(/<p>Version\s*v?(\d+(?:\.\d+)+)[ "<]/i)
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
