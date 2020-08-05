cask "sibelius" do
  version "2020.6"
  sha256 "ccc4efa05e11235e25b89add0b2ef66c9f85cd799cdbf138197ef52c6580e36c"

  url "http://cdn.avid.com/Sibelius/Sibelius/#{version}/708D428E/Sibelius_#{version}_Mac.dmg"
  appcast "https://avid.secure.force.com/pkb/articles/en_US/Compatibility/Sibelius-Operating-System-Compatibility-Chart"
  name "Sibelius"
  homepage "https://www.avid.com/sibelius"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "Install Sibelius.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.avid.pkg.sibelius.app",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "com.avid.tmp.AvidLink.pkg",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall launchctl: "com.avid.AvidLink.uninstall.HelperTool",
            pkgutil:   [
              "com.avid.pkg.sibelius.2018.fonts",
              "com.avid.pkg.sibelius.app",
              "com.avid.pkg.sibelius.englishscores",
              "com.avid.pkg.sibelius.rewire",
            ],
            script:    {
              executable:   "#{appdir}/Avid_Uninstallers/Avid Link/Avid Link Uninstaller.app/Contents/MacOS/AvidUninstaller",
              args:         ["-no-gui", "-all"],
              sudo:         true,
              must_succeed: true,
            },
            trash:     [
              "/Library/Application Support/Avid/Sibelius/",
              "/Users/Shared/Library/Application Support/Digidesign/Air/StructureSibelius",
            ],
            delete:    [
              "/Applications/Avid/Application Manager/",
              "/Library/Logs/Avid/AppManagerHelper/",
              "/Library/Logs/Avid/AppManagerUI/",
            ]

  zap trash: [
    "~/Library/Application Support/Avid/Sibelius/",
    "~/Library/Saved Application State/com.avid.sibelius.savedState",
    "~/Documents/Scores/Sibelius Example Scores",
    "~/Library/Application Support/Avid Link/",
    "~/Library/Application Support/AvidLink/",
    "~/Library/Application Support/Avid Technology/AvidLink/",
    "~/Library/Preferences/com.avid.Avid Link.plist",
    "~/Library/Preferences/com.avid.link.plist",
    "~/Library/Caches/Avid/Avid Link/",
    "~/Library/Caches/Avid Technology/Avid Link/",
  ]
end
