cask "microsoft-excel" do
  version "16.49.21050901"
  sha256 "23b3d8aae667f1728b026b44c0687234de8229365716043bea31cabf38e868f9"

  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Excel_#{version}_Installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
  name "Microsoft Excel"
  desc "Spreadsheet software"
  homepage "https://products.office.com/en-US/excel"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=525135"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "microsoft-office"
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :sierra"

  pkg "Microsoft_Excel_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil:   [
    "com.microsoft.package.Microsoft_Excel.app",
    "com.microsoft.pkg.licensing",
  ],
            launchctl: [
              "com.microsoft.office.licensingV2.helper",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Excel",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.excel.sfl*",
    "~/Library/Containers/com.microsoft.Excel",
    "~/Library/Preferences/com.microsoft.Excel.plist",
  ]
end
