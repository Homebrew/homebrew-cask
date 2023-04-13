cask "logitech-options" do
  on_sierra :or_older do
    version "7.14.77"
    sha256 "e4df55642e04139fc93d955e949bf736196a404ed067d87f8de7eb9ac9117ece"

    url "https://download01.logi.com/web/ftp/pub/techsupport/options/Options_#{version}.zip",
        verified: "download01.logi.com/web/ftp/pub/techsupport/options/"

    pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

    livecheck do
      url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,webos=mac-macos-x-10.12"
      regex(%r{/Options[._-]?v?(\d+(?:\.\d+)+)\.zip}i)
    end
  end
  on_high_sierra do
    version "8.30.293"
    sha256 "db5f2cd94960223bdf74f0db6fc009f82f80928fe2ce849202754bbdb720eb87"

    url "https://download01.logi.com/web/ftp/pub/techsupport/options/Options_#{version}.zip",
        verified: "download01.logi.com/web/ftp/pub/techsupport/options/"

    pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.mpkg"

    livecheck do
      url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,webos=mac-macos-x-10.13"
      regex(%r{/Options[._-]?v?(\d+(?:\.\d+)+)\.zip}i)
    end
  end
  on_mojave do
    version "8.54.147"
    sha256 "7b7a8d7a498d868c90b4ffe7dfc50a7a39c25e1f61350702e87d4c771b3d6459"

    url "https://download01.logi.com/web/ftp/pub/techsupport/options/Options_#{version}.zip",
        verified: "download01.logi.com/web/ftp/pub/techsupport/options/"

    pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.pkg"

    livecheck do
      url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,webos=mac-macos-x-10.14"
      regex(%r{/Options[._-]?v?(\d+(?:\.\d+)+)\.zip}i)
    end
  end
  on_catalina :or_newer do
    version "10.00.75"
    sha256 :no_check

    url "https://download01.logi.com/web/ftp/pub/techsupport/options/options_installer.zip",
        verified: "download01.logi.com/web/ftp/pub/techsupport/options/"

    pkg "LogiMgr Installer #{version}.app/Contents/Resources/LogiMgr.pkg"

    livecheck do
      url "https://download01.logi.com/web/ftp/pub/techsupport/options/options_installer.zip"
      strategy :extract_plist
    end
  end

  name "Logitech Options"
  desc "Software for Logitech devices"
  homepage "https://support.logitech.com/software/options"

  auto_updates true
  depends_on macos: ">= :sierra"

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
