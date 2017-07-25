cask 'imazing-mini' do
  version '2.3.2'
  sha256 '4b1e2e87b1de185fa6abbb96ccb5cbbbac8f78128ae84e79eb2c62f1972d0330'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazing#{version.major}Mac.Mini/iMazingMini#{version.major}forMac.dmg"
  name 'iMazing Mini'
  homepage 'https://imazing.com/mini'

  conflicts_with cask: 'imazing'
  depends_on macos: '>= 10.8'

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

  caveats <<-EOS.undent
    Performing a zap on this cask removes files pertaining to both #{token}
    and imazing, so it should not be done if you only want to uninstall one of them.
  EOS
end
