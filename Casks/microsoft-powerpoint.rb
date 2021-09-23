cask "microsoft-powerpoint" do
  version "16.53.21091200"
  sha256 "88fdb7d74bde7b6941eda1e2a0dd0c43a29a46bca821ea8daa332131c6243eb6"

  url "https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_PowerPoint_#{version}_Installer.pkg",
      verified: "officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/"
  name "Microsoft PowerPoint"
  desc "Presentation software"
  homepage "https://products.office.com/en-US/powerpoint"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=525136"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "microsoft-office"
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :sierra"

  pkg "Microsoft_PowerPoint_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil:   [
    "com.microsoft.package.Microsoft_PowerPoint.app",
    "com.microsoft.pkg.licensing",
  ],
            launchctl: "com.microsoft.office.licensingV2.helper"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Powerpoint",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.powerpoint.sfl*",
    "~/Library/Containers/com.microsoft.Powerpoint",
    "~/Library/Preferences/com.microsoft.Powerpoint.plist",
    "~/Library/Saved Application State/com.microsoft.Powerpoint.savedState",
  ]
end
