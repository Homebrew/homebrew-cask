cask 'icq' do
  version '3.0.21090'
  sha256 'b11c6ad268c3e857a42ddbc24422cee369969ba030c63e98650ef15697eec4d9'

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
