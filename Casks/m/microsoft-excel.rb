cask "microsoft-excel" do
  on_el_capitan :or_older do
    version "16.16.20101200"
    sha256 "bdd23b696d54e5ffeb40f30a9bd7f968d2936380ab78a6eaf29d05f5fc8eb78e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "16.30.19101301"
    sha256 "9886b661067f4a99de544d140980fb0f8ef2f4871baa519024781fb814a02fe5"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "16.43.20110804"
    sha256 "2711a1b8864f7474458086b4b0a56673fee0097d2049f276788c50e004c47d72"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "16.54.21101001"
    sha256 "e09fe9f49a36b37af3745673a385be4de9ae8ec774965fd1753f8479a775fc54"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "16.66.22101101"
    sha256 "94148628c6f143f07555b3d2a70cea61cef817d963539d281b092834496f8f16"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "16.77.23091703"
    sha256 "582fca32104e828e01c0928e674122f2d8044d84fd2dc1d7964e0a807e2f4695"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "16.89.24091630"
    sha256 "81e02698c209b0681999737d9be8f685e12e43c8ceaf7ee2c7a08ad61adc99f7"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "16.97.25051114"
    sha256 "c80a2fc420572a787532dbde9302f26df0e0244ddd2b6e0eb7946c703291495c"

    livecheck do
      url "https://go.microsoft.com/fwlink/p/?linkid=525135"
      strategy :header_match
    end
  end

  url "https://officecdnmac.microsoft.com/pr/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Microsoft_Excel_#{version}_Installer.pkg"
  name "Microsoft Excel"
  desc "Spreadsheet software"
  homepage "https://www.microsoft.com/en-US/microsoft-365/excel"

  auto_updates true
  conflicts_with cask: [
    "microsoft-office",
    "microsoft-office-businesspro",
  ]
  depends_on cask: "microsoft-auto-update"

  pkg "Microsoft_Excel_#{version}_Installer.pkg",
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
              "com.microsoft.package.Microsoft_Excel.app",
              "com.microsoft.pkg.licensing",
            ]

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
