cask 'icq' do
  version '3.0.18566'
  sha256 '78f1a45e0c384a925bd32219d26769647fe7b37feaeebed65df99db75657fa88'

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
