cask 'icq' do
  version '3.0.16597'
  sha256 'f92c6af7a02f070e50ec31e75c7e308e42668e54e40200dc24465ee751a573f8'

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
