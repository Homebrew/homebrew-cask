cask "capsomnia" do
  version "4.3.3"
  sha256 "64fd92443557150b0fab62e32ab9d036e94fb893c79c4be073e3ff229e6701d7"

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
