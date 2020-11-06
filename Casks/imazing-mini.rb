cask "imazing-mini" do
  version "2.8.1,9825:1542056055"
  sha256 "f6bd3704edbc9f9e4cd2497952155771bd50285ae9a3b99f7adb0f5210572a8b"

  # dl.devmate.com/com.DigiDNA.iMazing2Mac.Mini/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazing2Mac.Mini/#{version.after_comma.before_colon}/#{version.after_colon}/iMazingMini2forMac-#{version.after_comma.before_colon}.dmg"
  appcast "https://updates.devmate.com/com.DigiDNA.iMazing#{version.major}Mac.Mini.xml"
  name "iMazing Mini"
  homepage "https://imazing.com/backup-iphone-ipad"

  conflicts_with cask: "imazing"

  app "iMazing Mini.app"

  uninstall quit: "com.DigiDNA.iMazing#{version.major}Mac.Mini"

  zap trash: [
    "~/Library/Application Support/iMazing",
    "~/Library/Application Support/iMazing Mini",
    "~/Library/Application Support/MobileSync/Backup/iMazing.Versions",
    "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac.Mini",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing#{version.major}Mac.Mini",
    "~/Library/Caches/iMazing",
    "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.Mini.plist",
    "/Users/Shared/iMazing Mini",
  ]

  caveats <<~EOS
    Performing a zap on this cask removes files pertaining to both #{token}
    and imazing, so it should not be done if you only want to uninstall one of them.
  EOS
end
