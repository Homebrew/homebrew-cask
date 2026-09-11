cask "capsomnia" do
  version "4.0.0"
  sha256 "db728c2cd057976e080ba746adfa2683522d93c8621cb2252ba3e3d51278f23b"

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
