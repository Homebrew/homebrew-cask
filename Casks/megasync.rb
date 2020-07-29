cask 'megasync' do
  version '4.3.3'
  sha256 '2cdd3e0d4b2a21596f746cf0dde206c6c5d07d922d938963aa90cdd17f6578e4'

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
