cask "intune-company-portal" do
  version "2.8.200800"
  sha256 "8861d2a095c0da32940fa31463eb9ab80eb8242045cbdfa8bc95b58d601292f7"

  url "https://officecdn.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/CompanyPortal_#{version}-Installer.pkg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.microsoft.com/fwlink/?linkid=853070"
  name "Company Portal"
  desc "App to manage access to corporate apps, data, and resources"
  homepage "https://docs.microsoft.com/en-us/mem/intune/user-help/enroll-your-device-in-intune-macos-cp"

  auto_updates true
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :mojave"

  pkg "CompanyPortal_#{version}-Installer.pkg",
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
