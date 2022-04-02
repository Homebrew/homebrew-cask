cask "microsoft-excel" do
  if MacOS.version <= :el_capitan
    version "16.16.20101200"
    sha256 "bdd23b696d54e5ffeb40f30a9bd7f968d2936380ab78a6eaf29d05f5fc8eb78e"
  elsif MacOS.version <= :sierra
    version "16.30.19101301"
    sha256 "9886b661067f4a99de544d140980fb0f8ef2f4871baa519024781fb814a02fe5"
  elsif MacOS.version <= :high_sierra
    version "16.43.20110804"
    sha256 "2711a1b8864f7474458086b4b0a56673fee0097d2049f276788c50e004c47d72"
  elsif MacOS.version <= :mojave
    version "16.54.21101001"
    sha256 "e09fe9f49a36b37af3745673a385be4de9ae8ec774965fd1753f8479a775fc54"
  else
    version "16.59.22031300"
    sha256 "d4fe95b719f8d185821ed33fe74ce2c3450ba4dee70fbcae293ced7be7c12748"
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Excel_#{version}_Installer.pkg",
      verified: "officecdnmac.microsoft.com/"
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
  depends_on macos: ">= :yosemite"

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
            launchctl: "com.microsoft.office.licensingV2.helper"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Excel",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.excel.sfl*",
    "~/Library/Caches/com.microsoft.Excel",
    "~/Library/Containers/com.microsoft.Excel",
    "~/Library/Preferences/com.microsoft.Excel.plist",
    "~/Library/Saved Application State/com.microsoft.Excel.savedState",
    "~/Library/Webkit/com.microsoft.Excel",
  ]
end
