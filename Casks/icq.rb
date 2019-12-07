cask 'icq' do
  version '3.0.24905'
  sha256 '0cd6532b87c38b082711891f8f1908f51c3031d6606ab9bc59c3f08e43ab9254'

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
