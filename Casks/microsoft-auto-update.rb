cask "microsoft-auto-update" do
  version "4.25.20071300"
  sha256 "b8e3d4391e48732f42217589784d8b3417f6f14489d9de04395198a01bfdfa46"

  # officecdn-microsoft-com.akamaized.net/ was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_AutoUpdate_#{version}_Updater.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.microsoft.com/fwlink/?linkid=830196"
  name "Microsoft Auto Update"
  homepage "https://docs.microsoft.com/officeupdates/release-history-microsoft-autoupdate"

  pkg "Microsoft_AutoUpdate_#{version}_Updater.pkg"

  uninstall quit:      [
    "com.microsoft.autoupdate2",
    "com.microsoft.autoupdate.fba",
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
            delete:    "/Library/PrivilegedHelperTools/com.microsoft.autoupdate.helper"

  zap trash: [
    "~/Library/Application Support/Microsoft AutoUpdate",
    "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate.fba",
    "~/Library/Caches/Microsoft/uls/com.microsoft.autoupdate2",
    "~/Library/Caches/com.microsoft.autoupdate.fba",
    "~/Library/Caches/com.microsoft.autoupdate2",
    "~/Library/Cookies/com.microsoft.autoupdate.fba.binarycookies",
    "~/Library/Cookies/com.microsoft.autoupdate2.binarycookies",
    "~/Library/Preferences/com.microsoft.autoupdate.fba.plist",
    "~/Library/Preferences/com.microsoft.autoupdate2.plist",
    "~/Library/Saved Application State/com.microsoft.autoupdate2.savedState",
  ],
      rmdir: [
        "~/Library/Caches/Microsoft/uls",
        "~/Library/Caches/Microsoft",
      ]
end
