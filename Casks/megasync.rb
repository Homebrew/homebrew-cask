cask 'megasync' do
  version '4.3.0'
  sha256 '137da3481d80c26b444a4c5c53ab6c7e9d4424e48d7c30e8fafabef11447aed8'

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
