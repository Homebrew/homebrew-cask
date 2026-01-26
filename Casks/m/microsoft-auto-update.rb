cask "microsoft-auto-update" do
  version "4.81.25121042"
  sha256 "bf281c826c18a0a8e8fd8abe1c9bcbc8deb9b25c251fc6b219e3e5dd7452aa21"

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
        "~/Library/Application Scripts/UBF8T346G9.com.microsoft.oneauth",
        "~/Library/Application Support/Microsoft AutoUpdate",
        "~/Library/Caches/com.microsoft.autoupdate.fba",
        "~/Library/Caches/com.microsoft.autoupdate2",
        "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba",
        "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2",
        "~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies",
        "~/Library/Cookies/com.microsoft.autoupdate2.binarycookies",
        "~/Library/Group Containers/UBF8T346G9.com.microsoft.oneauth",
        "~/Library/Group Containers/UBF8T346G9.ms",
        "~/Library/HTTPStorages/com.microsoft.autoupdate.fba",
        "~/Library/HTTPStorages/com.microsoft.autoupdate2",
        "~/Library/Preferences/com.microsoft.autoupdate.fba.plist",
        "~/Library/Preferences/com.microsoft.autoupdate2.plist",
        "~/Library/Preferences/com.microsoft.shared.plist",
        "~/Library/Saved Application State/com.microsoft.autoupdate2.savedState",
      ],
      rmdir: [
        "~/Library/Caches/Microsoft",
        "~/Library/Caches/Microsoft/uls",
      ]
end
