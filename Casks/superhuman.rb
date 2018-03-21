cask 'superhuman' do
  version :latest
  sha256 :no_check

  url 'https://download.superhuman.com/Superhuman.dmg'
  name 'Superhuman'
  homepage 'https://superhuman.com/'

  app 'Superhuman.app'

  zap trash: [
               '~/Library/Application Support/Superhuman',
               '~/Library/Caches/Superhuman',
               '~/Library/Preferences/com.superhuman.electron.helper.plist',
               '~/Library/Preferences/com.superhuman.electron.plist',
               '~/Library/Preferences/com.superhuman.mail.plist',
             ]
end
