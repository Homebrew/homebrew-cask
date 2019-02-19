cask 'megasync' do
  version '4.0.1.0'
  sha256 '2d261437650dad496b073bf13bfd5026e3770674bb5de7380aa6aa9e0da13016'

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
