cask 'imazing-mini' do
  version '2.3.1'
  sha256 '65820880df939380db9730117669a5f2c4c4a334660762900aeda9e54539a25e'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazing#{version.major}Mac.Mini/iMazingMini#{version.major}forMac.dmg"
  name 'iMazing Mini'
  homepage 'https://imazing.com/mini'

  depends_on macos: '>= 10.8'

  app 'iMazing Mini.app'

  uninstall login_item: 'iMazing Mini',
            quit:       "com.DigiDNA.iMazing#{version.major}Mac.Mini"

  zap delete: [
                "~/Library/Caches/com.DigiDNA.iMazing#{version.major}Mac.Mini",
                "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazing#{version.major}Mac.Mini",
              ],
      trash:  [
                '~/Library/Application Support/iMazing Mini',
                "~/Library/Preferences/com.DigiDNA.iMazing#{version.major}Mac.Mini.plist",
              ]
end
