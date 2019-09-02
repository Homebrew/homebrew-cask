cask 'megasync' do
  version '4.2.4'
  sha256 'eb486c4203f945bdb57c31fe0667be8c8be4eb3b4f9ffe2b5714289770b0141c'

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
