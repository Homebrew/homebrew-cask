cask 'imazing' do
  version '1.5.3,1458843296'
  sha256 '94eadd18e6f33c80e4dccb6ee37505da23aa30456987bc08220e8045feac1728'

  # devmate.com/com.DigiDNA.iMazingMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.before_comma}/#{version.after_comma}/iMazingforMac-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          checkpoint: '37b327987f4142ec543ec8badd23547407170abdef45b3990a485c1f71c39607'
  name 'iMazing'
  homepage 'https://imazing.com/'
  license :commercial

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
