cask "capsomnia" do
  version "4.2.0"
  sha256 "4e1fe3cc95943fe3f7367cc15a410b031f31b1661ec621340167f178b6d34404"

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
