cask "monotype" do
  arch arm: "Arm", intel: "Intel"

  version "7.8.2"
  sha256 arm:   "57221f0ae804fb7486795dd6169614d978e8ae8285546e986f526990a44d7ead",
         intel: "fd8572ff90fa3d1d75e7a4ef8c74584272a49075af12cfd4eb75fc3ca9d6d09b"

  url "https://monotypeapp.monotype.com/release/#{version.no_dots}/mac/#{arch.downcase}/MTFInstallerMacOs#{arch}.zip"
  name "Monotype Desktop App"
  desc "Font finder and organiser"
  homepage "https://support.monotype.com/en/articles/7860542-monotype-desktop-app"

  livecheck do
    url "https://support.monotype.com/en/articles/8617063-release-notes"
    regex(/>\s*v?(\d+(?:\.\d+)+)\s*["'<]/im)
  end

  auto_updates true
  depends_on :macos

  pkg "MTFInstaller.pkg"

  uninstall launchctl: [
              "com.monotype.mfep",
              "com.monotype.monitorService",
              "com.monotype.ms",
              "com.monotype.updater",
            ],
            quit:      "com.monotype.monotype-fonts",
            pkgutil:   "com.monotype.monotype-fonts"

  zap delete: [
        "/Library/Application Support/Monotype Fonts",
        "/Library/Logs/Monotype Fonts",
        "/Library/Preferences/com.monotype.fonts.plist",
      ],
      trash:  [
        "~/Library/Application Scripts/com.monotype.notification-service",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.monotype.*.sfl*",
        "~/Library/Application Support/Monotype Fonts",
        "~/Library/Containers/com.monotype.notification-service",
        "~/Library/Logs/Monotype Fonts",
        "~/Library/Preferences/com.monotype.*.plist",
        "~/Library/Saved Application State/com.monotype.*.savedState",
      ]
end
