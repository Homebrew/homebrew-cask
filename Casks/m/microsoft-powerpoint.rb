cask "microsoft-powerpoint" do
  on_el_capitan :or_older do
    version "16.16.20101200"
    sha256 "0c898068408082124f7fe45717e3fb4b4f5647b609b54dc5fa6c90e295f499c3"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "16.30.19101301"
    sha256 "d0b16f96bb390a225c52808952a66f0e02bf3f355234cbe733b250d37bb44c72"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "16.43.20110804"
    sha256 "a89e0aed18e5b1e56293b1f9eaccc3e3f5089eb37a9eec64bb6f3a3fa90587eb"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "16.54.21101001"
    sha256 "75a57c82b46d0e2558c454f19610576b7a48baf1ccc5cd1fa61b69cca5bf0bd1"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "16.66.22101101"
    sha256 "bea8c4790445f726debd0f64d24fbdac59e3a9b51e95c092fb31da3913164540"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "16.77.23091703"
    sha256 "9ece350fa314584aafacfcdf559bb67b8707bc2c2e7a961f7881d1ea280aac4d"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "16.89.24091630"
    sha256 "44801ae2e12318f6f8982da6fabb1c7c1d79fb38cc464fecfd60189aa36e9555"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "16.97.25051114"
    sha256 "44d38070ea72daf712cb9885b411a7e31bea8401556547baa8c3819596130b4b"

    livecheck do
      url "https://go.microsoft.com/fwlink/p/?linkid=525136"
      strategy :header_match
    end
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_PowerPoint_#{version}_Installer.pkg"
  name "Microsoft PowerPoint"
  desc "Presentation software"
  homepage "https://www.microsoft.com/en-US/microsoft-365/powerpoint"

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

  uninstall launchctl: "com.microsoft.office.licensingV2.helper",
            quit:      "com.microsoft.autoupdate2",
            pkgutil:   [
              "com.microsoft.package.Microsoft_PowerPoint.app",
              "com.microsoft.pkg.licensing",
            ],
            delete:    "/Applications/Microsoft PowerPoint.app"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.Powerpoint*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.powerpoint.sfl*",
    "~/Library/Containers/com.microsoft.Powerpoint*",
    "~/Library/Preferences/com.microsoft.Powerpoint.plist",
    "~/Library/Saved Application State/com.microsoft.Powerpoint.savedState",
  ]
end
