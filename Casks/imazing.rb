cask 'imazing' do
  version '2.3.1'
  sha256 'cda074ee3c13d2a0a9fb7da96a347db068c87fd5d583f1fa24352ae7b2f33ac1'

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
