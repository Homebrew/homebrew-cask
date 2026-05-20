cask "imazing" do
  version "3.5.3,24045"
  sha256 "a60a6deea2b1a9edee1b639a84bb21861e8239b5d1f323d5055eac9164598a97"

  url "https://downloads.imazing.com/mac/iMazing/#{version.csv.first}.#{version.csv.second}/iMazing_#{version.csv.first}.#{version.csv.second}.dmg"
  name "iMazing"
  desc "iPhone management application"
  homepage "https://imazing.com/"

  livecheck do
    url "https://downloads.imazing.com/com.DigiDNA.iMazing#{version.major}Mac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "iMazing.app"

  uninstall quit:       [
              "com.DigiDNA.iMazing#{version.csv.first}.#{version.csv.second}Mac",
              "com.DigiDNA.iMazing#{version.csv.first}.#{version.csv.second}Mac.Mini",
            ],
            login_item: "iMazing Mini"

  zap trash: [
    "/Users/Shared/iMazing Mini",
    "/Users/Shared/iMazing",
    "~/Library/Application Support/iMazing Mini",
    "~/Library/Application Support/iMazing",
    "~/Library/Application Support/MobileSync/Backup/iMazing.Versions",
    "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac",
    "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac.Mini",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing#{version.major}Mac.Mini",
    "~/Library/Caches/iMazing",
    "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.Mini.plist",
    "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.plist",
  ]
end
