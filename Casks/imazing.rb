cask 'imazing' do
  version '1.5.7,1460039697'
  sha256 '65dee95097f4fb9b32fbf581bd227cf4fe956a54ad8f1512b29804d65db1d273'

  # devmate.com/com.DigiDNA.iMazingMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.DigiDNA.iMazingMac/#{version.before_comma}/#{version.after_comma}/iMazingforMac-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.DigiDNA.iMazingMac.xml',
          checkpoint: '067adde4ab4b95ddcf39a12afce955b90bb0153a15132cf353a8c20f0fdb5bd6'
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
