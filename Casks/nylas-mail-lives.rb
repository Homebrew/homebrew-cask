cask 'nylas-mail-lives' do
  version '2.2.0'
  sha256 '84dfaeff9f5b2658169f0ee6e1bafac1f265cee8916e4a3eef434bc06a0a144e'

  url "https://github.com/nylas-mail-lives/nylas-mail/releases/download/#{version}/nylas-#{version}.dmg"
  appcast 'https://github.com/nylas-mail-lives/nylas-mail/releases.atom',
          checkpoint: '745e3750c0293d39210d2bc4bef742724d59b02fc88ab26453f99bbe2b83526f'
  name 'Nylas Mail Lives'
  homepage 'https://github.com/nylas-mail-lives/nylas-mail'

  conflicts_with cask: 'nylas-mail'

  app 'Nylas Mail.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nylas.nylas-mail.sfl*',
                '~/Library/Caches/com.nylas.nylas-mail',
                '~/Library/Caches/com.nylas.nylas-mail.ShipIt',
                '~/Library/Caches/Nylas Mail',
                '~/Library/Saved Application State/com.nylas.nylas-mail.savedState',
              ],
      trash:  [
                '~/Library/Application Support/com.nylas.nylas-mail.ShipIt',
                '~/Library/Application Support/Nylas Mail',
                '~/Library/Preferences/com.nylas.nylas-mail.helper.plist',
                '~/Library/Preferences/com.nylas.nylas-mail.plist',
                '~/.nylas-mail',
              ]
end
