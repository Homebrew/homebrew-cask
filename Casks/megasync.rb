cask 'megasync' do
  version '4.0.0.0'
  sha256 'b8382b5386317c9b8da910c05b8270b49bbe0844108db3cc8c811d92e82cbb8a'

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
