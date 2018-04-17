cask 'nylas-mail-lives' do
  version '2.2.2'
  sha256 '4403231644c2cbca7d07c2763ff1a8116687ef499bd2e1ba544f1826f8cecfe2'

  url "https://github.com/nylas-mail-lives/nylas-mail/releases/download/#{version}/nylas-mail-#{version}.dmg"
  appcast 'https://github.com/nylas-mail-lives/nylas-mail/releases.atom',
          checkpoint: 'facf678c3480dd77ac1f31de0e99b82d1a6b695fa001be7b44b919551740c091'
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
