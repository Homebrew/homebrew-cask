cask "intune-company-portal" do
  version "5.2406.2"
  sha256 :no_check

  url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/CompanyPortal-Installer.pkg"
  name "Company Portal"
  desc "App to manage access to corporate apps, data, and resources"
  homepage "https://docs.microsoft.com/en-us/mem/intune/user-help/enroll-your-device-in-intune-macos-cp"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.microsoft.CompanyPortalMac"].short_version
    end
  end

  auto_updates true
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :mojave"

  pkg "CompanyPortal-Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.package.Microsoft_AutoUpdate.app", # Office16_autoupdate_updater.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall quit:    "com.microsoft.autoupdate2",
            pkgutil: [
              "com.microsoft.CompanyPortal",
              "com.microsoft.CompanyPortalMac",
            ],
            delete:  "/Applications/Company Portal.app"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.CompanyPortalMac.ssoextension/",
    "~/Library/Application Support/com.microsoft.CompanyPortalMac/",
    "~/Library/Caches/com.microsoft.CompanyPortalMac",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.microsoft.CompanyPortalMac/",
    "~/Library/Caches/CompanyPortalCache",
    "~/Library/Containers/com.microsoft.CompanyPortalMac.ssoextension/",
    "~/Library/HTTPStorages/com.microsoft.CompanyPortalMac.binarycookies",
    "~/Library/HTTPStorages/com.microsoft.CompanyPortalMac/",
    "~/Library/Logs/Company Portal/*",
    "~/Library/Preferences/com.microsoft.CompanyPortalMac.plist",
    "~/Library/Preferences/group.com.microsoft.CompanyPortalMac.plist",
    "~/Library/Saved Application State/com.microsoft.CompanyPortalMac.savedState/",
    "~/Library/WebKit/com.microsoft.CompanyPortalMac/",
  ]
end
