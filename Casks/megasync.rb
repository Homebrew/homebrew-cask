cask 'megasync' do
  version '4.0.2'
  sha256 '9a294ac8de233f07014832d5ad217eb540a75e1debb8ec4eb3df4b5e48776f22'

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
