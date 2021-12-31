cask "microsoft-auto-update" do
  version "4.42.21121100"
  sha256 "299ddcbfb071c287603b9602c94efe8977ef82cf1c65c98f36b1bc9428cbc02b"

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_AutoUpdate_#{version}_Updater.pkg"
  name "Microsoft Auto Update"
  desc "Provides updates to various Microsoft products"
  homepage "https://docs.microsoft.com/officeupdates/release-history-microsoft-autoupdate"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=830196"
    strategy :header_match
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
