cask "microsoft-powerpoint" do
  on_el_capitan :or_older do
    version "16.16.20101200"
    sha256 "0c898068408082124f7fe45717e3fb4b4f5647b609b54dc5fa6c90e295f499c3"
  end
  on_sierra do
    version "16.30.19101301"
    sha256 "d0b16f96bb390a225c52808952a66f0e02bf3f355234cbe733b250d37bb44c72"
  end
  on_high_sierra do
    version "16.43.20110804"
    sha256 "a89e0aed18e5b1e56293b1f9eaccc3e3f5089eb37a9eec64bb6f3a3fa90587eb"
  end
  on_mojave do
    version "16.54.21101001"
    sha256 "75a57c82b46d0e2558c454f19610576b7a48baf1ccc5cd1fa61b69cca5bf0bd1"
  end
  on_catalina do
    version "16.66.22101101"
    sha256 "bea8c4790445f726debd0f64d24fbdac59e3a9b51e95c092fb31da3913164540"
  end
  on_big_sur :or_newer do
    version "16.70.23021201"
    sha256 "176a8985a5c7ce2658bf66bf2568502bc384c44bf7de763ba74d0fcf2f7a12ec"
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_PowerPoint_#{version}_Installer.pkg",
      verified: "officecdnmac.microsoft.com/"
  name "Microsoft PowerPoint"
  desc "Presentation software"
  homepage "https://products.office.com/en-US/powerpoint"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=525136"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "microsoft-office",
    "microsoft-office-businesspro",
  ]
  depends_on cask: "microsoft-auto-update"

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
            delete:    "/Applications/Microsoft PowerPoint.app",
            launchctl: "com.microsoft.office.licensingV2.helper",
            quit:      "com.microsoft.autoupdate2"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Powerpoint",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.powerpoint.sfl*",
    "~/Library/Containers/com.microsoft.Powerpoint",
    "~/Library/Preferences/com.microsoft.Powerpoint.plist",
    "~/Library/Saved Application State/com.microsoft.Powerpoint.savedState",
  ]
end
