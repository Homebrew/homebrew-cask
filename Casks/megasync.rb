cask 'megasync' do
  version '3.7.1.0'
  sha256 'a808259d6f93be450b7e874b28329df6a3dad4526399331c7f5720da539c338e'

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
