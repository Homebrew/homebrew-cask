cask "microsoft-outlook" do
  on_el_capitan :or_older do
    version "16.16.20101200"
    sha256 "aafedfe466b7bf10f96fdfbf6b0f9bcf84e94a5097e5fccb3740d3d0cc666f26"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "16.30.19101301"
    sha256 "a131eb9ea7d0f498376f678198b27eab3139ec264a3a4d873be522ec8fe48845"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "16.43.20110804"
    sha256 "0e53acefafc25d1eebbf257f343de0d0a5258099c154f7ba5d99aa709fb50d08"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "16.54.21101001"
    sha256 "c7b3ced52462b611a9762941088fa05e42d79b26349ca62b705a9bcbce00b41e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "16.66.22102801"
    sha256 "bddede85956713be21fdb5ab72be07ecefd05552752e8e60c649e6a15fd0a2c2"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "16.77.23091703"
    sha256 "becfe797d1c799a4366385f449e42f7377bd3d6de5d4db20e37bd36ba2f24ef5"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "16.88.24081116"
    sha256 "113064593986a59f9a3b05c4c5744806ff04f050233301c65c1568a54e49c813"

    livecheck do
      url "https://go.microsoft.com/fwlink/p/?linkid=525137"
      strategy :header_match
    end
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Outlook_#{version}_Installer.pkg"
  name "Microsoft Outlook"
  desc "Email client"
  homepage "https://www.microsoft.com/en-us/microsoft-365/outlook/outlook-for-business"

  auto_updates true
  conflicts_with cask: [
    "microsoft-office",
    "microsoft-office-businesspro",
  ]
  depends_on cask: "microsoft-auto-update"

  pkg "Microsoft_Outlook_#{version}_Installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_all_autoupdate.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall launchctl: "com.microsoft.office.licensingV2.helper",
            quit:      "com.microsoft.autoupdate2",
            pkgutil:   [
              "com.microsoft.package.Microsoft_Outlook.app",
              "com.microsoft.pkg.licensing",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Outlook",
    "~/Library/Containers/com.microsoft.Outlook",
  ]
end
