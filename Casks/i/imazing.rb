cask "imazing" do
  version "3.0.1,21026"
  sha256 "9c17da0ad615859a9a36d62601e2096273e245dcd12cce81f842c833868ffb55"

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

  caveats <<~EOS
    Performing a zap on this cask removes files pertaining to both #{token}
    and imazing-mini. It should be done only if you want to uninstall both.
  EOS
end
