cask "microsoft-auto-update" do
  on_el_capitan :or_older do
    version "4.40.21101001"
    sha256 "f638f7e0da9ee659c323f2ede0f176804bfe9a615a8f8b6320bd2e69d91ef2b2"
  end
  on_sierra :or_newer do
    version "4.66.23121017"
    sha256 "e1d0fb04740282af67235329cd3d51229168bdde69d57b38ecfeaf66969170fd"
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
  depends_on macos: ">= :mojave"

  pkg "Microsoft_AutoUpdate_#{version}_Updater.pkg"

  uninstall quit:      [
              "com.microsoft.autoupdate.fba",
              "com.microsoft.autoupdate2",
              "com.microsoft.errorreporting",
            ],
            launchctl: [
              "com.microsoft.autoupdate.helper",
              "com.microsoft.autoupdate.helpertool",
              "com.microsoft.update.agent",
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
        "~/Library/Caches/Microsoft/uls",
        "~/Library/Caches/Microsoft",
      ]
end
