cask 'imazing' do
  version '1.5.9,1461598265'
  sha256 '2b567c46d029b40e45e9f3542cc3b90e49695872de1b83eb0880348810f87499'

  # devmate.com/com.DigiDNA.iMazingMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.before_comma}/#{version.after_comma}/iMazingforMac-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          checkpoint: '5cd16c3bcbfd3a77fa5e6f83b48945d1c7f37d7ecddfc739b054d9767e44dd8c'
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
