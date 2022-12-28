cask "microsoft-outlook" do
  on_el_capitan :or_older do
    version "16.16.20101200"
    sha256 "aafedfe466b7bf10f96fdfbf6b0f9bcf84e94a5097e5fccb3740d3d0cc666f26"
  end
  on_sierra do
    version "16.30.19101301"
    sha256 "a131eb9ea7d0f498376f678198b27eab3139ec264a3a4d873be522ec8fe48845"
  end
  on_high_sierra do
    version "16.43.20110804"
    sha256 "0e53acefafc25d1eebbf257f343de0d0a5258099c154f7ba5d99aa709fb50d08"
  end
  on_mojave do
    version "16.54.21101001"
    sha256 "c7b3ced52462b611a9762941088fa05e42d79b26349ca62b705a9bcbce00b41e"
  end
  on_catalina :or_newer do
    version "16.68.22121100"
    sha256 "dae88ef71f1e285c6f18dfd84974501052b37488fde7058cb506a6ec80e49dc8"
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg",
      verified: "officecdnmac.microsoft.com/"
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
            launchctl: "com.microsoft.office.licensingV2.helper",
            quit:      "com.microsoft.autoupdate2"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Outlook",
    "~/Library/Containers/com.microsoft.Outlook",
  ]
end
