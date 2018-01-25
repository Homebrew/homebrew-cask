cask 'icq' do
  version :latest
  sha256 :no_check

  # r.mail.ru/clo12053316/ftp.icq.com was verified as official when first introduced to the cask
  url 'https://r.mail.ru/clo12053316/ftp.icq.com/pub/ICQ_Mac/ICQ.dmg'
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
