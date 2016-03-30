cask 'imazing' do
  version '1.5.5,1459002125'
  sha256 'a64d2b02e5dc5516ef91550b80ee20ef9c9a2058c06622c9fc2adcd1eb9c9f45'

  # devmate.com/com.DigiDNA.iMazingMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.before_comma}/#{version.after_comma}/iMazingforMac-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          checkpoint: 'e9147b979e01a93530decea3dd1930bc4327d23a49b1ccc00b6146f8eca1e9ea'
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
