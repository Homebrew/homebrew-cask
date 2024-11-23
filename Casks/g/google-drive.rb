cask "google-drive" do
  version "100.0.2"
  sha256 :no_check

  # "5-percent" is included in the url to ensure that `brew upgrade` does not update to an older version as the
  # in-app updater can upgrade to a new version than https://dl.google.com/drive-file-stream/GoogleDrive.dmg provides
  url "https://dl.google.com/drive-file-stream/5-percent/GoogleDrive.dmg"
  name "Google Drive"
  desc "Client for the Google Drive storage service"
  homepage "https://www.google.com/drive/"

  livecheck do
    url :url
    strategy :extract_plist do |item|
      item["com.google.drivefs"]&.version
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "GoogleDrive.pkg"

  # Some launchctl and pkgutil items are shared with other Google apps, they should only be removed in the zap stanza
  # See: https://github.com/Homebrew/homebrew-cask/pull/92704#issuecomment-727163169
  # launchctl: com.google.keystone.daemon, com.google.keystone.system.agent, com.google.keystone.system.xpcservice
  # pkgutil: com.google.pkg.Keystone
  uninstall launchctl:  "com.google.GoogleUpdater.wake.system",
            quit:       [
              "com.google.drivefs",
              "com.google.drivefs.finderhelper.findersync",
            ],
            login_item: "Google Drive",
            pkgutil:    [
              "com.google.drivefs.arm64",
              "com.google.drivefs.filesystems.dfsfuse.arm64",
              "com.google.drivefs.filesystems.dfsfuse.x86_64",
              "com.google.drivefs.shortcuts",
              "com.google.drivefs.x86_64",
            ]

  zap launchctl: [
        "com.google.keystone.agent",
        "com.google.keystone.daemon",
        "com.google.keystone.system.agent",
        "com.google.keystone.system.xpcservice",
        "com.google.keystone.xpcservice",
      ],
      pkgutil:   "com.google.pkg.Keystone",
      trash:     [
        "~/Library/Application Scripts/com.google.drivefs*",
        "~/Library/Application Scripts/EQHXZ8M8AV.group.com.google.drivefs",
        "~/Library/Application Support/FileProvider/com.google.drivefs.fpext",
        "~/Library/Application Support/Google/DriveFS",
        "~/Library/Caches/com.google.drivefs",
        "~/Library/Containers/com.google.drivefs*",
        "~/Library/Group Containers/*group.com.google.drivefs",
        "~/Library/Preferences/com.google.drivefs*.plist",
        "~/Library/Preferences/Google Drive File Stream Helper.plist",
      ]
end
