cask "imazing" do
  version "3.6.4,24330"
  sha256 "e0425b3038ca90368aad57c189ddfd521fae8aae4f7e9ef4bc6e4fbbd89a7bbf"

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
              "com.DigiDNA.iMazing#{version.major}Mac",
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
