cask "sibelius" do
  version "2020.6"
  sha256 "ccc4efa05e11235e25b89add0b2ef66c9f85cd799cdbf138197ef52c6580e36c"

  url "http://cdn.avid.com/Sibelius/Sibelius/#{version}/708D428E/Sibelius_#{version}_Mac.dmg"
  appcast "https://avid.secure.force.com/pkb/articles/en_US/Compatibility/Sibelius-Operating-System-Compatibility-Chart"
  name "Sibelius"
  homepage "https://www.avid.com/sibelius"

  auto_updates true
  depends_on macos: ">= :sierra",
             cask:  "avid-link"

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
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: [
    "com.avid.pkg.sibelius.2018.fonts",
    "com.avid.pkg.sibelius.app",
    "com.avid.pkg.sibelius.englishscores",
    "com.avid.pkg.sibelius.rewire",
  ],
            trash:   [
              "/Library/Application Support/Avid/Sibelius/",
              "/Users/Shared/Library/Application Support/Digidesign/Air/StructureSibelius",
            ]

  zap trash: [
    "~/Library/Application Support/Avid/Sibelius/",
    "~/Library/Saved Application State/com.avid.sibelius.savedState",
    "~/Documents/Scores/Sibelius Example Scores",
  ]
end
