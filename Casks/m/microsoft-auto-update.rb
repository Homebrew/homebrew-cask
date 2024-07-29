cask "microsoft-auto-update" do
  on_el_capitan :or_older do
    version "4.40.21101001"
    sha256 "f638f7e0da9ee659c323f2ede0f176804bfe9a615a8f8b6320bd2e69d91ef2b2"
  end
  on_sierra do
    version "4.51.22091101"
    sha256 "ea9e59eb60604ad9785cb0c81bd490de5c7d32527f1da7064d4f77226e2dc907"
  end
  on_high_sierra do
    version "4.63.23091003"
    sha256 "abde56323f4753a90a99ca26a3c62060a498328bd90e0421395ec14a47d49101"
  end
  on_mojave :or_newer do
    version "4.73.24071426"
    sha256 "6f8e9def3d6e5728f28f16b1b9cd87e80287f2a8df9eb71abeb7fd1b1d42ec57"
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_AutoUpdate_#{version}_Updater.pkg"
  name "Microsoft Auto Update"
  desc "Provides updates to various Microsoft products"
  homepage "https://docs.microsoft.com/officeupdates/release-history-microsoft-autoupdate"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=830196"
    regex(/Microsoft[._-]AutoUpdate[._-]v?(\d+(?:\.\d+)+)[._-]Updater\.pkg/i)
    strategy :header_match
  end

  auto_updates true

  pkg "Microsoft_AutoUpdate_#{version}_Updater.pkg"

  uninstall launchctl: [
              "com.microsoft.autoupdate.helper",
              "com.microsoft.autoupdate.helpertool",
              "com.microsoft.update.agent",
            ],
            quit:      [
              "com.microsoft.autoupdate.fba",
              "com.microsoft.autoupdate2",
              "com.microsoft.errorreporting",
            ],
            pkgutil:   [
              "com.microsoft.package.Microsoft_AU_Bootstrapper.app",
              "com.microsoft.package.Microsoft_AutoUpdate.app",
            ],
            delete:    [
              "/Library/Caches/com.microsoft.autoupdate.fba",
              "/Library/Caches/com.microsoft.autoupdate.helper",
              "/Library/LaunchDaemons/com.microsoft.autoupdate.helper.plist",
              "/Library/Preferences/com.microsoft.autoupdate2.plist",
              "/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper",
            ]

  zap trash: [
        "~/Library/Application Support/Microsoft AutoUpdate",
        "~/Library/Caches/com.microsoft.autoupdate.fba",
        "~/Library/Caches/com.microsoft.autoupdate2",
        "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba",
        "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2",
        "~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies",
        "~/Library/Cookies/com.microsoft.autoupdate2.binarycookies",
        "~/Library/HTTPStorages/com.microsoft.autoupdate.fba",
        "~/Library/HTTPStorages/com.microsoft.autoupdate2",
        "~/Library/Preferences/com.microsoft.autoupdate.fba.plist",
        "~/Library/Preferences/com.microsoft.autoupdate2.plist",
        "~/Library/Saved Application State/com.microsoft.autoupdate2.savedState",
      ],
      rmdir: [
        "~/Library/Caches/Microsoft",
        "~/Library/Caches/Microsoft/uls",
      ]
end
