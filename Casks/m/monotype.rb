cask "monotype" do
  arch arm: "Arm", intel: "Intel"

  version "7.8.0"
  sha256 arm:   "868587a5eb100a8e6ce9f7fe2096fb1cfcb684ed1b5824038e4ee4f12df3d29d",
         intel: "9b851b40fc8a7770b896dee74c25025931b10e0c500542bf3188289fa4a099bb"

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
