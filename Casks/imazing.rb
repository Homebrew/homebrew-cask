cask "imazing" do
  version "2.15.5,16414"
  sha256 "36cd1864bafdbe1af551d2223cb603f03d83093428f6403e558ac4dd9434655f"

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
    and imazing-mini, so it should not be done if you only want to uninstall one of them.
  EOS
end
