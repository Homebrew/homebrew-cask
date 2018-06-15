cask 'imazing-mini' do
  version '2.5.4,8449:1520350258'
  sha256 '2412379613cb564953e0b134c47e6a041298174d5922d774ec050ead01e5e367'

  # dl.devmate.com/com.DigiDNA.iMazing2Mac.Mini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazing2Mac.Mini/#{version.after_comma.before_colon}/#{version.after_colon}/iMazingMini2forMac-#{version.after_comma.before_colon}.dmg"
  appcast "https://updates.devmate.com/com.DigiDNA.iMazing#{version.major}Mac.Mini.xml"
  name 'iMazing Mini'
  homepage 'https://imazing.com/mini'

  conflicts_with cask: 'imazing'
  depends_on macos: '>= :mountain_lion'

  app 'iMazing Mini.app'

  uninstall login_item: 'iMazing Mini',
            quit:       "com.DigiDNA.iMazing#{version.major}Mac.Mini"

  zap trash: [
               '~/Library/Application Support/iMazing',
               '~/Library/Application Support/iMazing Mini',
               '~/Library/Application Support/MobileSync/Backup/iMazing.Versions',
               "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac.Mini",
               "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing#{version.major}Mac.Mini",
               '~/Library/Caches/iMazing',
               "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.Mini.plist",
               '/Users/Shared/iMazing Mini',
             ]

  caveats <<~EOS
    Performing a zap on this cask removes files pertaining to both #{token}
    and imazing, so it should not be done if you only want to uninstall one of them.
  EOS
end
