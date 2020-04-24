cask 'icq' do
  version '3.0.27060'
  sha256 '54f277c93995f1c4ba70b524c040d8cc0539fe63c9e18787dddd2d768f57e1fc'

  # hb.bizmrg.com/icq-www/ was verified as official when first introduced to the cask
  url 'https://hb.bizmrg.com/icq-www/mac/x64/icq.dmg'
  appcast "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/version.xml"
  name 'ICQ'
  homepage 'https://icq.com/mac/en'

  app 'ICQ.app'

  zap trash: [
               '~/Library/Application Support/ICQ',
               '~/Library/Caches/com.icq.macicq',
               '~/Library/Preferences/com.icq.macicq.plist',
               '~/Library/Saved Application State/com.icq.macicq.savedState',
             ]
end
