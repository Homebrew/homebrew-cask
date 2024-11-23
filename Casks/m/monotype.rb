cask "monotype" do
  version "7.4.0"
  sha256 "e2f9e10ea816a876b02bf50d2877372e5ce3cda822a8e22a940c2315f3587fad"

  url "https://monotypeapp.monotype.com/release/#{version.no_dots}/mac/MTFInstallerMacOS.zip"
  name "Monotype Desktop App"
  desc "Font finder and organiser"
  homepage "https://support.monotype.com/en/articles/7860542-monotype-desktop-app"

  livecheck do
    url "https://support.monotype.com/en/articles/8617063-latest-release-notes"
    regex(/>Version\s*v?(\d+(?:\.\d+)+)[ "<]/i)
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
