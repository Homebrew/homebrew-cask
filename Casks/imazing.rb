cask 'imazing' do
  version '2.2.5'
  sha256 '9fd7d4f36ae53ed550d39c8f4bca207431943d8410cd5fbd0cbae4c7202809f8'

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazing#{version.major}Mac/iMazing#{version.major}forMac.dmg"
  name 'iMazing'
  homepage 'https://imazing.com/'

  depends_on macos: '>= :lion'

  app 'iMazing.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.digidna.imazingmac.sfl',
                '~/Library/Application Support/iMazing',
                '~/Library/Caches/com.DigiDNA.iMazingMac',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DigiDNA.iMazingMac',
                '~/Library/Caches/iMazing',
                '~/Library/Preferences/com.DigiDNA.iMazingMac.plist',
              ]
end
