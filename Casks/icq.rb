cask 'icq' do
  version '3.0.23938'
  sha256 '8b9d44c8c8af735e20306ec7617aae6b26fe324fe554fd6a432dd1791ac2afeb'

  # mra.mail.ru/icq_mac3_update was verified as official when first introduced to the cask
  url 'https://mra.mail.ru/icq_mac3_update/icq.dmg'
  appcast 'https://mra.mail.ru/icq_mac3_update/icq_update.xml'
  name 'ICQ for macOS'
  homepage 'https://icq.com/mac/en'

  app 'ICQ.app'

  zap trash: [
               '~/Library/Application Support/ICQ',
               '~/Library/Caches/com.icq.macicq',
               '~/Library/Preferences/com.icq.macicq.plist',
               '~/Library/Saved Application State/com.icq.macicq.savedState',
             ]
end
