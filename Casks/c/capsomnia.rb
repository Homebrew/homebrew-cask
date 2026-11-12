cask "capsomnia" do
  version "4.3.4"
  sha256 "e06251c54a022a2bb44c6c00873746a129c058a8b66f72252e1d0fe3ed8b603c"

  url "https://github.com/fuji-mak/Capsomnia/releases/download/v#{version}/Capsomnia-#{version}.pkg"
  name "Capsomnia"
  desc "Utility that keeps your computer awake with the lid closed"
  homepage "https://github.com/fuji-mak/Capsomnia/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  pkg "Capsomnia-#{version}.pkg"

  uninstall launchctl: "com.github.fuji-mak.capsomnia",
            pkgutil:   "com.github.fuji-mak.capsomnia.pkg",
            delete:    [
              "/Applications/Capsomnia.app",
              "/etc/sudoers.d/capsomnia",
              "/Library/PrivilegedHelperTools/capsomnia-pmset",
            ]

  zap delete: [
        "/Library/LaunchAgents/com.github.fuji-mak.capsomnia.plist",
        "/Library/PrivilegedHelperTools/capsomnia-pmset",
      ],
      trash:  [
        "~/Library/Caches/Capsomnia",
        "~/Library/Caches/com.github.fuji-mak.capsomnia",
        "~/Library/HTTPStorages/com.github.fuji-mak.capsomnia",
        "~/Library/Logs/Capsomnia",
        "~/Library/Preferences/com.github.fuji-mak.capsomnia.plist",
      ]
end
