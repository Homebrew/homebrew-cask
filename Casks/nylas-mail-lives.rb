cask 'nylas-mail-lives' do
  version '2.2.3'
  sha256 '01bfc2625b4de06da1164e0cb78661a6a7d0aca9d235984c3fd249a70632f0a9'

  url "https://github.com/nylas-mail-lives/nylas-mail/releases/download/#{version}/NylasMail.dmg"
  appcast 'https://github.com/nylas-mail-lives/nylas-mail/releases.atom',
          checkpoint: 'fd60b726eba11f5dd20c7a1d382d5ebf41bfc098c854e631e935d6b70e1e9d32'
  name 'Nylas Mail Lives'
  homepage 'https://github.com/nylas-mail-lives/nylas-mail'

  conflicts_with cask: 'nylas-mail'

  app 'Nylas Mail.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nylas.nylas-mail.sfl*',
               '~/Library/Application Support/com.nylas.nylas-mail.ShipIt',
               '~/Library/Application Support/Nylas Mail',
               '~/Library/Caches/com.nylas.nylas-mail',
               '~/Library/Caches/com.nylas.nylas-mail.ShipIt',
               '~/Library/Caches/Nylas Mail',
               '~/Library/Preferences/com.nylas.nylas-mail.helper.plist',
               '~/Library/Preferences/com.nylas.nylas-mail.plist',
               '~/Library/Saved Application State/com.nylas.nylas-mail.savedState',
               '~/.nylas-mail',
             ]
end
