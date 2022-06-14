cask "microsoft-auto-update" do
  if MacOS.version <= :el_capitan
    version "4.40.21101001"
    sha256 "f638f7e0da9ee659c323f2ede0f176804bfe9a615a8f8b6320bd2e69d91ef2b2"
  else
    version "4.48.22061100"
    sha256 "52823a753d1e221d3adfb4023a8fe284005d1b1c37ee104eafb526c8c809e03c"
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_AutoUpdate_#{version}_Updater.pkg"
  name "Microsoft Auto Update"
  desc "Provides updates to various Microsoft products"
  homepage "https://docs.microsoft.com/officeupdates/release-history-microsoft-autoupdate"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=830196"
    strategy :header_match
    regex(/Microsoft[._-]AutoUpdate[._-]v?(\d+(?:\.\d+)+)[._-]Updater\.pkg/i)
  end

  auto_updates true

  pkg "Microsoft_AutoUpdate_#{version}_Updater.pkg"

  uninstall quit:      [
    "com.microsoft.autoupdate2",
    "com.microsoft.autoupdate.fba",
    "com.microsoft.errorreporting",
  ],
            launchctl: [
              "com.microsoft.autoupdate.helpertool",
              "com.microsoft.autoupdate.helper",
              "com.microsoft.update.agent",
            ],
            pkgutil:   [
              "com.microsoft.package.Microsoft_AutoUpdate.app",
              "com.microsoft.package.Microsoft_AU_Bootstrapper.app",
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
    "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba",
    "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2",
    "~/Library/Caches/com.microsoft.autoupdate.fba",
    "~/Library/Caches/com.microsoft.autoupdate2",
    "~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies",
    "~/Library/Cookies/com.microsoft.autoupdate2.binarycookies",
    "~/Library/HTTPStorages/com.microsoft.autoupdate.fba",
    "~/Library/HTTPStorages/com.microsoft.autoupdate2",
    "~/Library/Preferences/com.microsoft.autoupdate.fba.plist",
    "~/Library/Preferences/com.microsoft.autoupdate2.plist",
    "~/Library/Saved Application State/com.microsoft.autoupdate2.savedState",
  ],
      rmdir: [
        "~/Library/Caches/Microsoft/uls",
        "~/Library/Caches/Microsoft",
      ]
end
