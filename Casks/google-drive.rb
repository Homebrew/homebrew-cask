cask "google-drive" do
  version "49.0.8"
  sha256 :no_check

  url "https://dl.google.com/drive-file-stream/GoogleDrive.dmg"
  name "Google Drive"
  desc "Client for the Google Drive storage service"
  homepage "https://www.google.com/drive/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "GoogleDrive.pkg"

  uninstall login_item: "Google Drive",
            quit:       "com.google.drivefs",
            launchctl:  [
              "com.google.keystone.daemon",
              "com.google.keystone.agent",
              "com.google.keystone.xpcservice",
              "com.google.keystone.system.agent",
              "com.google.keystone.system.xpcservice",
            ],
            pkgutil:    [
              "com.google.drivefs",
              "com.google.drivefs.x86_64",
              "com.google.drivefs.filesystems.dfsfuse.x86_64",
              "com.google.drivefs.shortcuts",
              "com.google.pkg.Keystone",
            ]

  zap trash:     [
    "~/Library/Application Scripts/com.google.drivefs.finderhelper",
    "~/Library/Application Scripts/com.google.drivefs.finderhelper.findersync",
    "~/Library/Application Scripts/com.google.drivefs.fpext",
    "~/Library/Application Support/FileProvider/com.google.drivefs.fpext",
    "~/Library/Application Support/Google/DriveFS",
    "~/Library/Caches/com.google.drivefs",
    "~/Library/Containers/com.google.drivefs.finderhelper",
    "~/Library/Containers/com.google.drivefs.finderhelper.findersync",
    "~/Library/Containers/com.google.drivefs.fpext",
    "~/Library/Group Containers/EQHXZ8M8AV.group.com.google.drivefs",
    "~/Library/Group Containers/group.com.google.drivefs",
    "~/Library/Preferences/Google Drive File Stream Helper.plist",
    "~/Library/Preferences/com.google.drivefs.helper.renderer.plist",
    "~/Library/Preferences/com.google.drivefs.plist",
    "~/Library/Preferences/com.google.drivefs.settings.plist",
  ],
      launchctl: [
        "com.google.keystone.agent",
        "com.google.keystone.system.agent",
        "com.google.keystone.daemon",
        "com.google.keystone.xpcservice",
        "com.google.keystone.system.xpcservice",
      ]

  caveats <<~EOS
    Although #{token} may be installed alongside Google Backup and Sync, you should not use the same account with both.

      https://support.google.com/a/answer/7496409#allowboth
  EOS
end
