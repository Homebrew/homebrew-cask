cask 'icq' do
  version '3.0.26426'
  sha256 '1a1fcf7287145d891aa481f946b38f007d93240a71b21f55704c44f755b10b8b'

  # hb.bizmrg.com/icq-www was verified as official when first introduced to the cask
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
