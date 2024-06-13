cask "logi-options-plus" do
  version "1.74.577900"
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip",
      verified: "download01.logi.com/web/ftp/pub/techsupport/optionsplus/"
  name "Logitech Options+"
  desc "Software for Logitech devices"
  homepage "https://www.logitech.com/en-us/software/logi-options-plus.html"

  livecheck do
    url "https://support.logi.com/hc/en-gb/articles/1500005516462"
    regex(/version\D*?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  # see https://prosupport.logi.com/hc/en-us/articles/6046882446359
  installer script: {
    executable: "logioptionsplus_installer.app/Contents/MacOS/logioptionsplus_installer",
    args:       ["--quiet"],
    sudo:       true,
  }

  uninstall launchctl: [
              "com.logi.cp-dev-mgr",
              "com.logi.optionsplus",
              "com.logi.optionsplus.updater",
            ],
            quit:      [
              "com.logi.cp-dev-mgr",
              "com.logi.optionsplus",
              "com.logi.optionsplus.driverhost",
              "com.logi.optionsplus.updater",
              "com.logitech.FirmwareUpdateTool",
              "com.logitech.logiaipromptbuilder",
            ],
            delete:    [
              "/Applications/logioptionsplus.app",
              "/Applications/Utilities/Logi Options+ Driver Installer.bundle",
              "/Library/Application Support/Logitech.localized/LogiOptionsPlus",
            ],
            rmdir:     "/Library/Application Support/Logitech.localized"

  zap trash: [
    "/Users/Shared/logi",
    "/Users/Shared/LogiOptionsPlus",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.logi.optionsplus*.sfl*",
    "~/Library/Application Support/LogiOptionsPlus",
    "~/Library/Preferences/com.logi.cp-dev-mgr.plist",
    "~/Library/Preferences/com.logi.optionsplus.driverhost.plist",
    "~/Library/Preferences/com.logi.optionsplus.plist",
    "~/Library/Saved Application State/com.logi.optionsplus.savedState",
  ]

  caveats do
    reboot
  end
end
