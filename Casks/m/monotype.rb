cask "monotype" do
  arch arm: "Arm", intel: "Intel"

  version "7.8.1"
  sha256 arm:   "906a0ac9530ca3848a4759a9b9c1604af080a90dc895593c76f9e93f74cfca59",
         intel: "839de7568ff21566c9546b4dbb322de31602cc3988db7ed3f5e62ef242f6b185"

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
