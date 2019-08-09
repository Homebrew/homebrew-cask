cask 'megasync' do
  version '4.2.2'
  sha256 '9e74c12fdd18e1d42a47dc34585dfb180c139db0a9884795731bd286a4bb0c4b'

  url 'https://mega.nz/MEGAsyncSetup.dmg'
  appcast 'https://github.com/meganz/MEGAsync/releases.atom'
  name 'MEGAsync'
  homepage 'https://mega.nz/'

  app 'MEGAsync.app'

  zap trash: [
               '~/Library/Caches/mega.mac',
               '~/Library/Preferences/mega.mac.plist',
             ]
end
