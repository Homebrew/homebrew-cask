cask "microsoft-word" do
  version "16.54.21101001"
  sha256 "7f3ed397b517aac3637d8b8f8b4233f9e7132941f0657eaca8ec423ac068616e"

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Word_#{version}_Installer.pkg",
      verified: "officecdnmac.microsoft.com/"
  name "Microsoft Word"
  desc "Word processor"
  homepage "https://products.office.com/en-US/word"

  livecheck do
    url "https://go.microsoft.com/fwlink/p/?linkid=525134"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "microsoft-office"
  depends_on cask: "microsoft-auto-update"
  depends_on macos: ">= :sierra"

  pkg "Microsoft_Word_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil:   [
    "com.microsoft.package.Microsoft_Word.app",
    "com.microsoft.pkg.licensing",
  ],
            launchctl: "com.microsoft.office.licensingV2.helper"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Word",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.word.sfl*",
    "~/Library/Application Support/CrashReporter/Microsoft Word_*.plist",
    "~/Library/Containers/com.microsoft.Word",
    "~/Library/Preferences/com.microsoft.Word.plist",
  ]
end
