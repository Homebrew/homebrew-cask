cask "microsoft-outlook" do
  version "16.41.20091302"
  sha256 "6495b4804c9aff332e89ef2c8dfee17f0c60a35b406059acaff296e2c899dd2e"

  # officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/ was verified as official when first introduced to the cask
  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg"
  appcast "https://docs.microsoft.com/en-us/officeupdates/update-history-office-for-mac"
  name "Microsoft Outlook"
  desc "Cross-platform industry standard email client"
  homepage "https://products.office.com/en-us/outlook/email-and-calendar-software-microsoft-outlook"

  auto_updates true
  conflicts_with cask: "microsoft-office"
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :sierra"

  pkg "Microsoft_Outlook_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil:   [
    "com.microsoft.package.Microsoft_Outlook.app",
    "com.microsoft.pkg.licensing",
  ],
            launchctl: "com.microsoft.office.licensingV2.helper"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Outlook",
    "~/Library/Containers/com.microsoft.Outlook",
  ]
end
