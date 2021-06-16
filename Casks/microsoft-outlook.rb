cask "microsoft-outlook" do
  version "16.50.21061301"
  sha256 "71965312f4e358ee2115367ceaeadf4c3fbc0c6f8ac292ea63e4dac56bb482bb"

  url "https://officecdn-microsoft-com.akamaized.net/db/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/db/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
  name "Microsoft Outlook"
  desc "Email client"
  homepage "https://products.office.com/en-us/outlook/email-and-calendar-software-microsoft-outlook"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=525137"
    strategy :header_match
  end

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
