cask 'imazing' do
  version '2.11.4.13602'
  sha256 '4eeaa96cd939c27a3bf37e84e2b28177dc363eee5e5cee63ebdfd800b99ed96e'

  url "https://downloads.imazing.com/mac/iMazing/#{version}/iMazing_#{version}.dmg"
  appcast "https://downloads.imazing.com/com.DigiDNA.iMazing#{version.major}Mac.xml"
  name 'iMazing'
  homepage 'https://imazing.com/'

  auto_updates true
  conflicts_with cask: 'imazing-mini'

  app 'iMazing.app'

  uninstall login_item: 'iMazing Mini',
            quit:       [
                          "com.DigiDNA.iMazing#{version}Mac",
                          "com.DigiDNA.iMazing#{version}Mac.Mini",
                        ]

  zap trash: [
               '~/Library/Application Support/iMazing',
               '~/Library/Application Support/iMazing Mini',
               '~/Library/Application Support/MobileSync/Backup/iMazing.Versions',
               "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac",
               "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac.Mini",
               "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing#{version.major}Mac.Mini",
               '~/Library/Caches/iMazing',
               "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.plist",
               "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.Mini.plist",
               '/Users/Shared/iMazing Mini',
               '/Users/Shared/iMazing',
             ]

  caveats <<~EOS
    Performing a zap on this cask removes files pertaining to both #{token}
    and imazing-mini, so it should not be done if you only want to uninstall one of them.
  EOS
end
