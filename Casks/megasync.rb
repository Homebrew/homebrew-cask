cask 'megasync' do
  version '4.0.1.0'
  sha256 '7e58892995d7f9a7ba7365c476ce5c804a8d4557cbd840052b6be73ded7c473a'

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
