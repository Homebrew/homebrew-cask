cask "imazing" do
  version "2.17.3,17295"
  sha256 "5285b7e8212266659f8ccdc9d92b847a56a6d83134b983a946ba07fc42887e5a"

  url "https://downloads.imazing.com/mac/iMazing/#{version.csv.first}.#{version.csv.second}/iMazing_#{version.csv.first}.#{version.csv.second}.dmg"
  name "iMazing"
  desc "iPhone management application"
  homepage "https://imazing.com/"

  livecheck do
    url "https://downloads.imazing.com/com.DigiDNA.iMazing#{version.major}Mac.xml"
    strategy :sparkle
  end

  auto_updates true

  app "iMazing.app"

  uninstall login_item: "iMazing Mini",
            quit:       [
              "com.DigiDNA.iMazing#{version.csv.first}.#{version.csv.second}Mac",
              "com.DigiDNA.iMazing#{version.csv.first}.#{version.csv.second}Mac.Mini",
            ]

  zap trash: [
    "~/Library/Application Support/iMazing",
    "~/Library/Application Support/iMazing Mini",
    "~/Library/Application Support/MobileSync/Backup/iMazing.Versions",
    "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac",
    "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac.Mini",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing#{version.major}Mac.Mini",
    "~/Library/Caches/iMazing",
    "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.plist",
    "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.Mini.plist",
    "/Users/Shared/iMazing Mini",
    "/Users/Shared/iMazing",
  ]

  caveats <<~EOS
    Performing a zap on this cask removes files pertaining to both #{token}
    and imazing-mini. It should be done only if you want to uninstall both.
  EOS
end
