cask "microsoft-word" do
  on_el_capitan :or_older do
    version "16.16.20101200"
    sha256 "0c61b7db7a6a13653270795c085a909aa54668e8de2f2ca749257ce6aa5957d1"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "16.30.19101301"
    sha256 "6abd7939b0d935023ebb8fabeb206c4cbbe8eb8f9a3ff7d318448d2ba5f332e4"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "16.43.20110804"
    sha256 "3d957d534fb2142f6e95a688552890a31f0d942796f0128ca837a3e98405d413"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "16.54.21101001"
    sha256 "7f3ed397b517aac3637d8b8f8b4233f9e7132941f0657eaca8ec423ac068616e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "16.66.22101101"
    sha256 "5a6a75d9a5b46cceeff5a1b7925c0eab6e4976cba529149b7b291a0355e7a7c9"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "16.77.23091703"
    sha256 "10c8db978206275a557faf3650763a656b1f7170c9b2a65fa6fdce220bd23066"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "16.89.24091630"
    sha256 "e064013cf26dc3742f07436fae1bb1a37fdd21fc4fb09640c0de0fc977f4ffd3"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "16.91.24111020"
    sha256 "7fab22d0a3304d2bd1fc9019c7e0481c637e44892e20500de72244feef191e9e"

    livecheck do
      url "https://go.microsoft.com/fwlink/p/?linkid=525134"
      strategy :header_match
    end
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Word_#{version}_Installer.pkg"
  name "Microsoft Word"
  desc "Word processor"
  homepage "https://www.microsoft.com/en-US/microsoft-365/word"

  auto_updates true
  conflicts_with cask: [
    "microsoft-office",
    "microsoft-office-businesspro",
  ]
  depends_on cask: "microsoft-auto-update"

  pkg "Microsoft_Word_#{version}_Installer.pkg",
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
              "com.microsoft.package.Microsoft_Word.app",
              "com.microsoft.pkg.licensing",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Word",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.word.sfl*",
    "~/Library/Application Support/CrashReporter/Microsoft Word_*.plist",
    "~/Library/Containers/com.microsoft.Word",
    "~/Library/Preferences/com.microsoft.Word.plist",
    "~/Library/Saved Application State/com.microsoft.Word.savedState",
  ]
end
