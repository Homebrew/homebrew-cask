cask 'imazing' do
  version '2'
  sha256 :no_check # required as upstream package is updated in-place

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazing#{version}Mac/iMazing#{version}forMac.dmg"
  name 'iMazing'
  homepage 'https://imazing.com/'

  conflicts_with cask: 'imazing-mini'
  depends_on macos: '>= :mountain_lion'

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
               "~/Library/Caches/com.DigiDNA.iMazing#{version}Mac",
               "~/Library/Caches/com.DigiDNA.iMazing#{version}Mac.Mini",
               "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing#{version}Mac.Mini",
               '~/Library/Caches/iMazing',
               "~/Library/Preferences/com.DigiDNA.iMazing#{version}Mac.plist",
               "~/Library/Preferences/com.DigiDNA.iMazing#{version}Mac.Mini.plist",
               '/Users/Shared/iMazing Mini',
               '/Users/Shared/iMazing',
             ]

  caveats <<~EOS
    Performing a zap on this cask removes files pertaining to both #{token}
    and imazing-mini, so it should not be done if you only want to uninstall one of them.
  EOS
end
