cask "logitech-options" do
  version "10.26.49"
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/options/options_installer.zip",
      verified: "download01.logi.com/web/ftp/pub/techsupport/options/"
  name "Logitech Options"
  desc "Software for Logitech devices"
  homepage "https://support.logitech.com/software/options"

  deprecate! date: "2025-12-12", because: :discontinued, replacement_cask: "logi-options+"

  auto_updates true
  depends_on :macos

  # The url is unversioned, but the download returns an app with a version number
  rename "LogiMgr Installer*.app", "LogiMgr Installer.app"

  pkg "LogiMgr Installer.app/Contents/Resources/LogiMgr.pkg"

  uninstall launchctl: [
              "com.logi.bolt.app",
              "com.logitech.manager.daemon",
            ],
            quit:      [
              "com.logitech.Logi-Options",
              "com.logitech.manager.daemon",
              "com.logitech.manager.uninstaller",
            ],
            script:    {
              executable: "/Applications/Utilities/LogiMgr Uninstaller.app/Contents/Resources/Uninstaller",
            },
            pkgutil:   [
              "com.logi.bolt.pkg",
              "com.logitech.manager.pkg",
              "com.Logitech.signedKext.pkg",
            ],
            delete:    "/Library/Application Support/Logitech.localized"

  zap trash: [
        "~/Library/Application Support/Logitech/Logitech Options",
        "~/Library/Application Support/Logitech/Options",
        "~/Library/Caches/com.logitech.Logi-Options",
        "~/Library/Preferences/com.logitech.Logi-Options.plist",
        "~/Library/Preferences/com.logitech.manager.daemon.plist",
        "~/Library/Preferences/com.logitech.manager.setting.ffff.plist",
        "~/Library/Saved Application State/com.logitech.manager.uninstaller.savedState",
      ],
      rmdir: "~/Library/Application Support/Logitech"

  caveats do
    reboot
  end
end
