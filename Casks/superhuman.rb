cask 'superhuman' do
  version :latest
  sha256 :no_check

  url 'https://download.superhuman.com/Superhuman.dmg'
  name 'Superhuman'
  homepage 'https://superhuman.com/'

  app 'Superhuman.app'

  zap trash: [
               '~/Library/Application Support/Superhuman',
               '~/Library/Caches/com.superhuman.electron',
               '~/Library/Caches/com.superhuman.electron.helper',
               '~/Library/Caches/com.superhuman.electron.ShipIt',
               '~/Library/Caches/Superhuman',
               '~/Library/Logs/Superhuman',
               '~/Library/Preferences/com.superhuman.electron.plist',
               '~/Library/Preferences/com.superhuman.electron.helper.plist',
               '~/Library/Preferences/com.superhuman.mail.plist',
             ]
end
