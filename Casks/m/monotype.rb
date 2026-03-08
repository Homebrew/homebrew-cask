cask "monotype" do
  arch arm: "Arm", intel: "Intel"

  version "7.7.0"
  sha256 arm:   "9c462812d2440afff4cbd3673b9f1d9865f7f6e70dc41d001cdc22623a15dc1e",
         intel: "c3f7dea86d87e186e836902bb92e43984ffe23512653acb643894b74222ca205"

  url "https://monotypeapp.monotype.com/release/#{version.no_dots}/mac/#{arch.downcase}/MTFInstallerMacOs#{arch}.zip"
  name "Monotype Desktop App"
  desc "Font finder and organiser"
  homepage "https://support.monotype.com/en/articles/7860542-monotype-desktop-app"

  livecheck do
    url "https://support.monotype.com/en/articles/8617063-release-notes"
    regex(/>\s*v?(\d+(?:\.\d+)+)\s*["'<]/im)
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
