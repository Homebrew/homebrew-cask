cask 'megasync' do
  version '4.3.1'
  sha256 '187bf5c4721fa74f235aa0f9c12e8303755f840c83bbeb63ad000b33bc1ea32b'

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
