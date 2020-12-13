cask "microsoft-outlook" do
  version "16.43.20110804"
  sha256 "0e53acefafc25d1eebbf257f343de0d0a5258099c154f7ba5d99aa709fb50d08"

  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
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
