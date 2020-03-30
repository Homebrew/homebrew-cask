cask 'megasync' do
  version '4.3.2'
  sha256 '896d922bb94f4e2884403a7a8d2d1979bd7c8a29ffa6056fc08d850c421340e7'

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
