cask 'megasync' do
  version '4.1.1'
  sha256 'e02dd282b63e140dc7ead0a11a5057f8ec59f2a5c18bf4b766a80ef9005293c1'

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
