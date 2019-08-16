cask 'megasync' do
  version '4.2.3'
  sha256 '8b4d01e3f0c6f042440ea2ce8667a72257297778a4b881419de5a44001e9c0c1'

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
