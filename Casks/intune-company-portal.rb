cask "intune-company-portal" do
  version :latest
  sha256 :no_check

  url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/CompanyPortal-Installer.pkg"
  name "Company Portal"
  desc "App to manage access to corporate apps, data, and resources"
  homepage "https://docs.microsoft.com/en-us/mem/intune/user-help/enroll-your-device-in-intune-macos-cp"

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

  uninstall pkgutil: [
    "com.microsoft.CompanyPortalMac",
    "com.microsoft.CompanyPortal",
  ],
            delete:  [
              "/Applications/Company Portal.app",
            ]
end
