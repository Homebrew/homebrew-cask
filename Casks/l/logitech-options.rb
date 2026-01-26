cask "logitech-options" do
  on_catalina :or_older do
    version "8.54.147"
    sha256 "7b7a8d7a498d868c90b4ffe7dfc50a7a39c25e1f61350702e87d4c771b3d6459"

    url "https://web.archive.org/web/20210811105616/https://download01.logi.com/web/ftp/pub/techsupport/options/Options_#{version}.zip",
        verified: "web.archive.org/web/20210811105616/https://download01.logi.com/web/ftp/pub/techsupport/options/"

    livecheck do
      url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,webos=mac-macos-x-10.14"
      regex(%r{/Options[._-]?v?(\d+(?:\.\d+)+)\.zip}i)
    end

    # The url is unversioned, but the download returns an app with a version number
    rename "LogiMgr Installer*.app", "LogiMgr Installer.app"

    pkg "LogiMgr Installer.app/Contents/Resources/LogiMgr.pkg"
  end
  on_big_sur :or_newer do
    version "10.26.49"
    sha256 :no_check

    url "https://download01.logi.com/web/ftp/pub/techsupport/options/options_installer.zip",
        verified: "download01.logi.com/web/ftp/pub/techsupport/options/"

    livecheck do
      url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,webos=mac-macos-x-11.0"
      regex(/Software Version: .*?v?(\d+(?:\.\d+)+)/i)
      strategy :json do |json, regex|
        json["articles"]&.select { |item| item["name"] == "Logitech Options" }
                        &.map { |item| item["body"]&.[](regex, 1) }
      end
    end

    # The url is unversioned, but the download returns an app with a version number
    rename "LogiMgr Installer*.app", "LogiMgr Installer.app"

    pkg "LogiMgr Installer.app/Contents/Resources/LogiMgr.pkg"
  end

  name "Logitech Options"
  desc "Software for Logitech devices"
  homepage "https://support.logitech.com/software/options"

  deprecate! date: "2025-12-12", because: :discontinued, replacement_cask: "logi-options+"

  auto_updates true

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
