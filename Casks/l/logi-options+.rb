cask "logi-options+" do
  on_catalina do
    version "1.44.415778"
    sha256 "c38b38aada01a296d32dcebb61200b53977e876089b8502b7f8453d1efa3a3f6"

    url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer_#{version}.zip",
        verified: "download01.logi.com/web/ftp/pub/techsupport/optionsplus/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "1.60.495862"
    sha256 "711d64f48b9dc2ed48f50dccc8610e64b3ce437383ed6ff3da6e220380271434"

    url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer_#{version}.zip",
        verified: "download01.logi.com/web/ftp/pub/techsupport/optionsplus/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "1.84.641293"
    sha256 :no_check

    url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip",
        verified: "download01.logi.com/web/ftp/pub/techsupport/optionsplus/"

    livecheck do
      url "https://updates.optionsplus.logitechg.com/pipeline/v2/update/optionsplus3/osx/public/update.json"
      strategy :json do |json|
        json["version"]
      end
    end
  end

  name "Logitech Options+"
  desc "Software for Logitech devices"
  homepage "https://www.logitech.com/en-us/software/logi-options-plus.html"

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
